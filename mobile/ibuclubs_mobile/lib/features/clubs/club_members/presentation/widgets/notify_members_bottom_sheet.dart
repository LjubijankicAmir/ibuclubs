import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';
import 'package:ibuclubs_mobile/features/clubs/club_members/application/club_members_bloc.dart';

void showNotifyMembersBottomSheet(BuildContext context, String clubId) {
  final bloc = context.read<ClubMembersBloc>();
  final notificationTitleController = TextEditingController();
  final notificationDescriptionController = TextEditingController();

  showModalBottomSheet(
    context: context,
    useRootNavigator: true,
    isScrollControlled: true,
    builder:
        (context) => BlocProvider.value(
          value: bloc,
          child: BlocConsumer<ClubMembersBloc, ClubMembersState>(
            listener:
                (context, state) => state.pushNotificationState.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  failed:
                      (failure) => RequestFailureSnack.show(context, failure),
                  success: (result) => AutoRouter.of(context).maybePop(),
                ),
            builder:
                (context, state) => Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.1),
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
                      bottom: MediaQuery.of(context).viewInsets.bottom + 20,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              width: 40,
                              height: 4,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            "Push a notification to members",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 24),
                          Text(
                            "Notification title",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: notificationTitleController,
                            decoration: InputDecoration(
                              hintText: "Enter notification title",
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Notification message",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: notificationDescriptionController,
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: "Enter notification message",
                            ),
                          ),
                          const SizedBox(height: 36),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: state.pushNotificationState.maybeWhen(
                              processing:
                                  () => ElevatedButton(
                                    onPressed: null,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kPrimaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        color: kBackgroundColor,
                                      ),
                                    ),
                                  ),
                              orElse:
                                  () => ElevatedButton(
                                    onPressed: () {
                                      bloc.add(
                                        ClubMembersEvent.pushNotification(
                                          clubId,
                                          notificationTitleController.text,
                                          notificationDescriptionController
                                              .text,
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: kPrimaryColor,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Text(
                                      "Push Notification",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: kBackgroundColor,
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
        ),
  );
}
