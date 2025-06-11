import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/form/widgets/value_form_field.dart';
import 'package:ibuclubs_mobile/core/presentation/routes.gr.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';
import 'package:ibuclubs_mobile/features/activities/presentation/widgets/activity_card.dart';
import 'package:ibuclubs_mobile/features/home/application/home_bloc.dart';
import 'package:ibuclubs_mobile/features/home/domain/description.dart';
import 'package:ibuclubs_mobile/features/home/domain/name.dart';
import 'package:ibuclubs_mobile/features/home/domain/social_media_link.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getService<HomeBloc>();
    return BlocProvider<HomeBloc>(
      create: (context) => bloc..add(const HomeEvent.initialize()),
      child: BlocBuilder<HomeBloc, HomeState>(
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
              success:
                  (response) => Padding(
                    padding: kDefaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Welcome To IBU Clubs!',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Explore clubs, connect with members, and find your community.',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor.withOpacity(0.7),
                          ),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Your Upcoming Activities',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        response.result.isEmpty
                            ? Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: kPrimaryColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                  width: 1,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.event_busy_outlined,
                                    size: 48,
                                    color: kPrimaryColor,
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    "Nothing to see here",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    "No upcoming activites",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: kPrimaryColor.withOpacity(0.7),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            : SizedBox(
                              height: 150,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder:
                                    (context, index) => Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap:
                                            () => AutoRouter.of(
                                              context,
                                            ).navigate(ActivitiesRoute()),
                                        child: ActivityCard(
                                          width: 350,
                                          activity: response.result[index],
                                          canTap: false,
                                          isOwned: false,
                                        ),
                                      ),
                                    ),
                                separatorBuilder:
                                    (_, _) => const SizedBox(width: 16),
                                itemCount:
                                    response.result.length > 3
                                        ? 3
                                        : response.result.length,
                              ),
                            ),
                        const SizedBox(height: 32),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Create Your Own Club',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Start your own club and connect with like-minded individuals.',
                          style: TextStyle(
                            fontSize: 14,
                            color: kPrimaryColor.withOpacity(0.7),
                          ),
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder:
                                  (context) => BlocProvider.value(
                                    value: bloc,
                                    child: BlocConsumer<HomeBloc, HomeState>(
                                      listener:
                                          (
                                            context,
                                            state,
                                          ) => state.requestState.maybeWhen(
                                            orElse: () {},
                                            failed:
                                                (failure) =>
                                                    RequestFailureSnack.show(
                                                      context,
                                                      failure,
                                                    ),
                                            success:
                                                (result) =>
                                                    AutoRouter.of(
                                                      context,
                                                    ).maybePop(),
                                          ),
                                      builder:
                                          (context, state) => Container(
                                            height:
                                                MediaQuery.of(
                                                  context,
                                                ).size.height *
                                                0.8,
                                            decoration: BoxDecoration(
                                              color: kPrimaryColor.withOpacity(
                                                0.1,
                                              ),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 20,
                                                right: 20,
                                                top: 20,
                                                bottom:
                                                    MediaQuery.of(
                                                      context,
                                                    ).viewInsets.bottom +
                                                    20,
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Container(
                                                      width: 40,
                                                      height: 4,
                                                      decoration: BoxDecoration(
                                                        color: Colors.grey[300],
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              2,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Text(
                                                    "Submit Club for Approval",
                                                    style: TextStyle(
                                                      fontSize: 24,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 24),
                                                  Text(
                                                    "Club Name",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  ValueFormField(
                                                    fieldName: "Club Name",
                                                    formField: state.form.name,
                                                    onLeft:
                                                        () => bloc.add(
                                                          const HomeEvent.nameLeft(),
                                                        ),
                                                    onChanged:
                                                        (value) => bloc.add(
                                                          HomeEvent.nameChanged(
                                                            Name(value),
                                                          ),
                                                        ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Text(
                                                    "Description",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  ValueFormField(
                                                    fieldName: "Description",
                                                    formField:
                                                        state.form.description,
                                                    lines: 5,
                                                    onLeft:
                                                        () => bloc.add(
                                                          const HomeEvent.descriptionLeft(),
                                                        ),
                                                    onChanged:
                                                        (value) => bloc.add(
                                                          HomeEvent.descriptionChanged(
                                                            Description(value),
                                                          ),
                                                        ),
                                                  ),
                                                  const SizedBox(height: 20),
                                                  Text(
                                                    "Chat group",
                                                    style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  ValueFormField(
                                                    fieldName:
                                                        "Chat group invite link",
                                                    formField:
                                                        state
                                                            .form
                                                            .socialMediaLink,
                                                    onLeft:
                                                        () => bloc.add(
                                                          const HomeEvent.socialMediaLinkLeft(),
                                                        ),
                                                    onChanged:
                                                        (value) => bloc.add(
                                                          HomeEvent.socialMediaLinkChanged(
                                                            SocialMediaLink(
                                                              value,
                                                            ),
                                                          ),
                                                        ),
                                                  ),
                                                  const SizedBox(height: 48),
                                                  SizedBox(
                                                    width: double.infinity,
                                                    height: 50,
                                                    child: state.requestState.maybeWhen(
                                                      processing:
                                                          () => ElevatedButton(
                                                            onPressed: null,
                                                            style: ElevatedButton.styleFrom(
                                                              backgroundColor:
                                                                  kPrimaryColor,
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12,
                                                                    ),
                                                              ),
                                                            ),
                                                            child: const Center(
                                                              child: CircularProgressIndicator(
                                                                color:
                                                                    kBackgroundColor,
                                                              ),
                                                            ),
                                                          ),
                                                      orElse:
                                                          () => ElevatedButton(
                                                            onPressed: () {
                                                              bloc.add(
                                                                const HomeEvent.submitClub(),
                                                              );
                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                              backgroundColor:
                                                                  kPrimaryColor,
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius.circular(
                                                                      12,
                                                                    ),
                                                              ),
                                                            ),
                                                            child: const Text(
                                                              "Submit for Approval",
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color:
                                                                    kBackgroundColor,
                                                              ),
                                                            ),
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                    ),
                                  ),
                            );
                          },
                          child: Text(
                            "Click here to submit a club for approval",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
      ),
    );
  }
}
