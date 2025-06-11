import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';
import 'package:ibuclubs_mobile/features/activities/application/activities_bloc.dart';
import 'package:ibuclubs_mobile/features/activities/presentation/widgets/activity_card.dart';
import 'package:ibuclubs_mobile/features/activities/presentation/widgets/create_activity_bottom_sheet.dart';

@RoutePage()
class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getService<ActivitiesBloc>();
    return BlocProvider<ActivitiesBloc>(
      create: (context) => bloc..add(const ActivitiesEvent.initialize()),
      child: BlocConsumer<ActivitiesBloc, ActivitiesState>(
        listenWhen:
            (previous, current) =>
                previous.enrollToActivityState != current.enrollToActivityState,
        listener:
            (context, state) => state.enrollToActivityState.maybeWhen(
              orElse: () {},
              failed: (failure) => RequestFailureSnack.show(context, failure),
              success:
                  (_) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'You enrolled to an activity!',
                        style: TextStyle(color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  ),
            ),
        buildWhen:
            (previous, current) =>
                previous.activitiesState != current.activitiesState ||
                previous.ownedClubState != current.ownedClubState,
        builder:
            (context, state) => state.activitiesState.map(
              ready:
                  (_) => Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  ),
              processing:
                  (_) => Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  ),
              failed:
                  (failed) => Center(
                    child: Text(
                      'Failed to load activities: ${failed.failure}',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
              success: (response) {
                final ownedClubId = state.ownedClubState.maybeMap(
                  orElse: () => null,
                  success: (response) => response.result?.id,
                );
                return Stack(
                  children: [
                    RefreshIndicator(
                      onRefresh: () async {
                        bloc.add(const ActivitiesEvent.initialize());
                      },
                      child:
                          response.result.isNotEmpty
                              ? SingleChildScrollView(
                                physics: const AlwaysScrollableScrollPhysics(),
                                child: Padding(
                                  padding: kDefaultPadding,
                                  child: Column(
                                    children: [
                                      ListView.builder(
                                        itemBuilder:
                                            (context, index) => ActivityCard(
                                              activity: response.result[index],
                                              isOwned:
                                                  ownedClubId ==
                                                  response.result[index].clubId,
                                            ),
                                        itemCount: response.result.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                              : Center(
                                child: SingleChildScrollView(
                                  physics:
                                      const AlwaysScrollableScrollPhysics(),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 128,
                                      horizontal: 16,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 16,
                                        horizontal: 32,
                                      ),
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor.withOpacity(0.1),
                                        borderRadius: kDefaultBorderRadius,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Nothing to see here",
                                            style: TextStyle(
                                              color: kPrimaryColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            "It seems you have no upcoming activites in your clubs",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: kPrimaryColor.withOpacity(
                                                0.7,
                                              ),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                    ),
                    state.ownedClubState.maybeWhen(
                      orElse: () => SizedBox.shrink(),
                      success:
                          (response) =>
                              response != null
                                  ? Positioned(
                                    bottom: 16,
                                    right: 16,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        shadowColor: Colors.transparent,
                                        backgroundColor: kPrimaryColor,
                                      ),
                                      onPressed:
                                          () => showCreateActivityBottomSheet(
                                            context,
                                          ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            "Create Activity",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 8),
                                          Icon(
                                            Icons.arrow_circle_right_outlined,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  : SizedBox.shrink(),
                    ),
                  ],
                );
              },
            ),
      ),
    );
  }
}
