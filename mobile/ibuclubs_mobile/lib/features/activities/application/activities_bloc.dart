import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/data/request/request_state.dart';
import 'package:ibuclubs_mobile/core/presentation/form/form.dart';
import 'package:ibuclubs_mobile/features/activities/application/form/create_activity_form_state.dart';
import 'package:ibuclubs_mobile/features/activities/domain/activity_points.dart';
import 'package:ibuclubs_mobile/features/activities/domain/date.dart';
import 'package:ibuclubs_mobile/features/activities/domain/description.dart';
import 'package:ibuclubs_mobile/features/activities/domain/max_participants.dart';
import 'package:ibuclubs_mobile/features/activities/domain/model/activity.dart';
import 'package:ibuclubs_mobile/features/activities/domain/name.dart';
import 'package:ibuclubs_mobile/features/activities/domain/repository/activity_repository.dart';
import 'package:ibuclubs_mobile/features/activities/domain/time.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/model/club.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/repository/clubs_repository.dart';
import 'package:injectable/injectable.dart';

part 'activities_bloc.freezed.dart';
part 'activities_event.dart';
part 'activities_state.dart';

@injectable
class ActivitiesBloc extends Bloc<ActivitiesEvent, ActivitiesState> {
  final ActivityRepository _activityRepository;
  final ClubsRepository _clubsRepository;
  ActivitiesBloc(this._activityRepository, this._clubsRepository)
    : super(ActivitiesState.initial()) {
    on<_Initialize>(_onInitialize);
    on<_NameChanged>(_onNameChanged);
    on<_NameLeft>(_onNameLeft);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_DescriptionLeft>(_onDescriptionLeft);
    on<_DateChanged>(_onDateChanged);
    on<_DateLeft>(_onDateLeft);
    on<_TimeChanged>(_onTimeChanged);
    on<_TimeLeft>(_onTimeLeft);
    on<_ActivityPointsChanged>(_onActivityPointsChanged);
    on<_ActivityPointsLeft>(_onActivityPointsLeft);
    on<_MaxParticipantsChanged>(_onMaxParticipantsChanged);
    on<_MaxParticipantsLeft>(_onMaxParticipantsLeft);
    on<_CreateActivity>(_onCreateActivity);
    on<_EnrollToActivity>(_onEnrollToActivity);
  }

  Future<void> _onInitialize(
    _Initialize event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith(activitiesState: RequestState.processing()));

    final result = await _activityRepository.getUpcomingActivities();

    emit(
      state.copyWith(
        activitiesState: result.fold(
          (failure) => RequestState.failed(failure),
          (success) => RequestState.success(success),
        ),
      ),
    );

    emit(state.copyWith(ownedClubState: RequestState.processing()));

    final ownedClubResult = await _clubsRepository.getOwnedClub();

    emit(
      state.copyWith(
        ownedClubState: ownedClubResult.fold(
          (failure) => RequestState.failed(failure),
          (success) => RequestState.success(success),
        ),
      ),
    );
  }

  Future<void> _onNameChanged(
    _NameChanged event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(name: state.form.name.changed(event.name)));
  }

  Future<void> _onNameLeft(
    _NameLeft event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(name: state.form.name.left()));
  }

  Future<void> _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(
      state.copyWith.form(
        description: state.form.description.changed(event.description),
      ),
    );
  }

  Future<void> _onDescriptionLeft(
    _DescriptionLeft event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(description: state.form.description.left()));
  }

  Future<void> _onDateChanged(
    _DateChanged event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(date: state.form.date.changed(event.date)));
  }

  Future<void> _onDateLeft(
    _DateLeft event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(date: state.form.date.left()));
  }

  Future<void> _onTimeChanged(
    _TimeChanged event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(time: state.form.time.changed(event.time)));
  }

  Future<void> _onTimeLeft(
    _TimeLeft event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(time: state.form.time.left()));
  }

  Future<void> _onActivityPointsChanged(
    _ActivityPointsChanged event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(
      state.copyWith.form(
        activityPoints: state.form.activityPoints.changed(event.activityPoints),
      ),
    );
  }

  Future<void> _onActivityPointsLeft(
    _ActivityPointsLeft event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith.form(activityPoints: state.form.activityPoints.left()));
  }

  Future<void> _onMaxParticipantsChanged(
    _MaxParticipantsChanged event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(
      state.copyWith.form(
        maxParticipants: state.form.maxParticipants.changed(
          event.maxParticipants,
        ),
      ),
    );
  }

  Future<void> _onMaxParticipantsLeft(
    _MaxParticipantsLeft event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(
      state.copyWith.form(maxParticipants: state.form.maxParticipants.left()),
    );
  }

  Future<void> _onCreateActivity(
    _CreateActivity event,
    Emitter<ActivitiesState> emit,
  ) async {
    print("current form state: ${state.form}");
    emit(
      state.copyWith.form(
        name: state.form.name.left(),
        description: state.form.description.left(),
        date: state.form.date.left(),
        time: state.form.time.left(),
        activityPoints: state.form.activityPoints.left(),
        maxParticipants: state.form.maxParticipants.left(),
      ),
    );

    if (!state.form.isValid) {
      return;
    }

    emit(state.copyWith(createActivityState: RequestState.processing()));

    final ownedClubId = state.ownedClubState.maybeWhen(
      success: (club) => club?.id,
      orElse: () => null,
    );

    final result = await _activityRepository.createActivity(
      ownedClubId!,
      state.form.name.input,
      state.form.description.input,
      state.form.date.input,
      state.form.time.input,
      state.form.activityPoints.input,
      state.form.maxParticipants.input,
    );

    emit(
      state.copyWith(
        createActivityState: result.fold(
          () => RequestState.success(unit),
          (failure) => RequestState.failed(failure),
        ),
      ),
    );
  }

  Future<void> _onEnrollToActivity(
    _EnrollToActivity event,
    Emitter<ActivitiesState> emit,
  ) async {
    emit(state.copyWith(enrollToActivityState: RequestState.processing()));

    final result = await _activityRepository.enrollToActivity(event.activityId);

    emit(
      state.copyWith(
        enrollToActivityState: result.fold(
          () => RequestState.success(unit),
          (failure) => RequestState.failed(failure),
        ),
      ),
    );
  }
}
