part of 'clubs_bloc.dart';

@freezed
class ClubsState with _$ClubsState {
  factory ClubsState({required RequestState<Clubs> requestState}) = _ClubsState;

  factory ClubsState.initial() =>
      ClubsState(requestState: RequestState.ready());
}
