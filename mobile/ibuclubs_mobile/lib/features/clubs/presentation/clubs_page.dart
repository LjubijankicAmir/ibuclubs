import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibuclubs_mobile/core/di/services.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';
import 'package:ibuclubs_mobile/features/clubs/application/clubs_bloc.dart';
import 'package:ibuclubs_mobile/features/clubs/presentation/widgets/club_card.dart';

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
              failed: (failure) => SizedBox.shrink(),
              success:
                  (response) => SingleChildScrollView(
                    child: Padding(
                      padding: kDefaultPadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (response.result.myClubs.isNotEmpty)
                              ? Text(
                                'My Clubs',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                              : SizedBox.shrink(),
                          (response.result.myClubs.isNotEmpty)
                              ? const SizedBox(height: 16)
                              : SizedBox.shrink(),
                          ...response.result.myClubs.map(
                            (club) => ClubCard(
                              name: club.name,
                              description: club.description,
                            ),
                          ),
                          const SizedBox(height: 32),
                          Text(
                            'All Clubs',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 16),
                          ...response.result.allClubs.map(
                            (club) => ClubCard(
                              name: club.name,
                              description: club.description,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            ),
      ),
    );
  }
}
