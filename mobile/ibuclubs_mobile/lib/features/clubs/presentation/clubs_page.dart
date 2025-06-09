import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/clubs/application/clubs_bloc.dart';
import 'package:ibuclubs_mobile/features/clubs/presentation/widgets/club_card.dart';
import 'package:ibuclubs_mobile/features/clubs/presentation/widgets/my_club_card.dart';

@RoutePage()
class ClubsPage extends StatelessWidget {
  const ClubsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getService<ClubsBloc>();
    return BlocProvider<ClubsBloc>(
      create: (context) => bloc..add(const ClubsEvent.initialize()),
      child: BlocBuilder<ClubsBloc, ClubsState>(
        builder:
            (context, state) => state.requestState.maybeMap(
              orElse:
                  () => Center(
                    child: CircularProgressIndicator(color: kPrimaryColor),
                  ),
              failed: (failure) => const SizedBox.shrink(),
              success:
                  (response) => Container(
                    color: Colors.grey.shade100,
                    child: RefreshIndicator(
                      onRefresh: () async {
                        bloc.add(const ClubsEvent.initialize());
                      },
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Padding(
                          padding: kDefaultPadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (response.result.myClubs.isNotEmpty) ...[
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
                                    'My Clubs',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                ...response.result.myClubs.map(
                                  (membership) => Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: MyClubCard(membership: membership),
                                  ),
                                ),
                                const SizedBox(height: 24),
                              ],
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  'All Clubs',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              ...response.result.allClubs.map(
                                (club) => Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: ClubCard(club: club),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
            ),
      ),
    );
  }
}
