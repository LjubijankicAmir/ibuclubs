import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/core/presentation/widgets/request/request_failure_snack.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/application/club_details_bloc.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/presentation/widgets/join_button.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/presentation/widgets/leave_button.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _joinViber(String inviteUrl) async {
  final uri = Uri.parse(inviteUrl);

  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
    return;
  }

  final storeUri =
      Platform.isAndroid
          ? Uri.parse(
            'https://play.google.com/store/apps/details?id=com.viber.voip',
          )
          : Uri.parse('https://apps.apple.com/app/id382617920');
  if (await canLaunchUrl(storeUri)) {
    await launchUrl(storeUri, mode: LaunchMode.externalApplication);
  } else {
    await launchUrl(uri);
  }
}

@RoutePage()
class ClubDetailsPage extends StatelessWidget {
  final String id;
  const ClubDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final bloc = getService<ClubDetailsBloc>();
    return BlocProvider<ClubDetailsBloc>(
      create: (context) => bloc..add(ClubDetailsEvent.initialize(clubId: id)),
      child: BlocConsumer<ClubDetailsBloc, ClubDetailsState>(
        listenWhen:
            (previous, current) =>
                previous.membershipState != current.membershipState,
        listener:
            (context, state) => state.membershipState.maybeWhen(
              // ignore: body_might_complete_normally_nullable
              orElse: () {},
              success: (success) => AutoRouter.of(context).maybePop(),
              failed: (failure) => RequestFailureSnack.show(context, failure),
            ),
        builder:
            (context, state) => state.requestState.maybeMap(
              orElse:
                  () => Scaffold(
                    appBar: AppBar(
                      title: Text(
                        "Club details",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kBackgroundColor,
                        ),
                      ),
                      backgroundColor: kPrimaryColor,
                      iconTheme: const IconThemeData(color: kBackgroundColor),
                    ),
                    body: SingleChildScrollView(
                      child: Padding(
                        padding: kDefaultPadding,
                        child: Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                width: 120,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                width: double.infinity,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              const SizedBox(height: 32),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
              failed: (failure) => SizedBox.shrink(),
              success: (result) {
                final chat =
                    result.result.isEnrolled &&
                            result.result.socialMediaLink != null
                        ? true
                        : false;
                return SingleChildScrollView(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 64.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(48),
                                topRight: Radius.circular(48),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 48),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      result.result.name,
                                      style: const TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Members: ${result.result.membershipCount}',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 32),
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
                                      'About',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    result.result.description,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  const SizedBox(height: 32),
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
                                      'Past activites',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: kPrimaryColor,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  Container(
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
                                          "No past activities yet",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: kPrimaryColor.withOpacity(
                                              0.7,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  chat
                                      ? const SizedBox(height: 32)
                                      : SizedBox.shrink(),
                                  chat
                                      ? Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 6,
                                        ),
                                        decoration: BoxDecoration(
                                          color: kPrimaryColor.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Text(
                                          'Chat group',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            color: kPrimaryColor,
                                          ),
                                        ),
                                      )
                                      : SizedBox.shrink(),
                                  chat
                                      ? const SizedBox(height: 16)
                                      : SizedBox.shrink(),
                                  chat
                                      ? GestureDetector(
                                        onTap:
                                            () => _joinViber(
                                              result.result.socialMediaLink!,
                                            ),
                                        child: Text(
                                          "Click here to join the club's chat group",
                                        ),
                                      )
                                      : SizedBox.shrink(),
                                  const SizedBox(height: 32),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 64),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child:
                                          result.result.isEnrolled
                                              ? LeaveButton(
                                                onPressed: () {
                                                  bloc.add(
                                                    ClubDetailsEvent.updateMembership(
                                                      clubId: result.result.id,
                                                      isMember: false,
                                                    ),
                                                  );

                                                  AutoRouter.of(
                                                    context,
                                                  ).maybePop();
                                                },
                                              )
                                              : JoinButton(
                                                onPressed: () {
                                                  bloc.add(
                                                    ClubDetailsEvent.updateMembership(
                                                      clubId: result.result.id,
                                                      isMember: true,
                                                    ),
                                                  );
                                                  AutoRouter.of(
                                                    context,
                                                  ).maybePop();
                                                },
                                              ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 16,
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.groups_2_outlined,
                            size: 64,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
      ),
    );
  }
}
