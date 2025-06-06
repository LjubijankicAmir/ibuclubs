import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/application/club_details_bloc.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/presentation/widgets/join_button.dart';
import 'package:ibuclubs_mobile/features/clubs/club_details/presentation/widgets/leave_button.dart';

class ClubDetailsPage extends StatelessWidget {
  final String id;
  const ClubDetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final bloc = getService<ClubDetailsBloc>();
    return BlocProvider<ClubDetailsBloc>(
      create: (context) => bloc..add(ClubDetailsEvent.initialize(clubId: id)),
      child: BlocBuilder<ClubDetailsBloc, ClubDetailsState>(
        builder:
            (context, state) => state.requestState.map(
              ready:
                  (_) => const Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  ),
              processing:
                  (_) => const Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  ),
              failed: (failure) => SizedBox.shrink(),
              success:
                  (result) => Scaffold(
                    appBar: AppBar(
                      title: Text(
                        "Club details",
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: kBackgroundColor,
                        ),
                      ),
                      leading: BackButton(color: kBackgroundColor),
                      centerTitle: true,
                      backgroundColor: kPrimaryColor,
                      elevation: 0,
                    ),
                    body: Stack(
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
                                      textAlign: TextAlign.center,
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
                                    const SizedBox(height: 32),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child:
                                          result.result.isEnrolled
                                              ? LeaveButton(onPressed: () {})
                                              : JoinButton(onPressed: () {}),
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
                  ),
            ),
      ),
    );
  }
}
