import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/application/club_members_bloc.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/presentation/widgets/member_card.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/presentation/widgets/notify_members_bottom_sheet.dart';

@RoutePage()
class ClubMembersPage extends StatelessWidget {
  final String clubId;
  final String role;
  const ClubMembersPage({super.key, required this.clubId, required this.role});

  @override
  Widget build(BuildContext context) {
    final bloc = getService<ClubMembersBloc>();
    return BlocProvider<ClubMembersBloc>(
      create: (context) => bloc..add(ClubMembersEvent.initialize(clubId)),
      child: BlocConsumer<ClubMembersBloc, ClubMembersState>(
        listenWhen:
            (previous, current) =>
                previous.actionRequestState != current.actionRequestState,
        listener:
            (context, state) => state.actionRequestState.maybeWhen(
              orElse: () {
                return;
              },
              failed: (failure) => RequestFailureSnack.show(context, failure),
              success:
                  (result) => bloc.add(ClubMembersEvent.initialize(clubId)),
            ),
        builder:
            (context, state) => state.requestState.map(
              ready:
                  (_) => Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  ),
              processing:
                  (_) => Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  ),
              failed:
                  (failure) => Center(
                    child: Text(
                      'Failed to load members: ${failure.failure}',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
              success:
                  (response) => Container(
                    padding: kDefaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            'Club members',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: kPrimaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        SizedBox(
                          height: 400,
                          child: RefreshIndicator(
                            backgroundColor: Colors.white,
                            color: kPrimaryColor,
                            onRefresh: () async {
                              bloc.add(ClubMembersEvent.initialize(clubId));
                            },
                            child: ListView.builder(
                              physics: AlwaysScrollableScrollPhysics(),
                              itemBuilder:
                                  (context, index) => MemberCard(
                                    member: response.result[index],
                                    callerRole: role,
                                    clubId: clubId,
                                  ),
                              itemCount: response.result.length,
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        GestureDetector(
                          onTap:
                              () =>
                                  showNotifyMembersBottomSheet(context, clubId),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: kPrimaryColor.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Notify members',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: kPrimaryColor,
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
    );
  }
}
