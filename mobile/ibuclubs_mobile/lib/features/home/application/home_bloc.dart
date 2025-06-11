import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/data/request/request_state.dart';
import 'package:ibuclubs_mobile/core/presentation/form/value_form_field.dart';
import 'package:ibuclubs_mobile/features/activities/domain/model/activity.dart';
import 'package:ibuclubs_mobile/features/activities/domain/repository/activity_repository.dart';
import 'package:ibuclubs_mobile/features/clubs/domain/repository/clubs_repository.dart';
import 'package:ibuclubs_mobile/features/home/application/form/submit_club_form_state.dart';
import 'package:ibuclubs_mobile/features/home/domain/description.dart';
import 'package:ibuclubs_mobile/features/home/domain/name.dart';
import 'package:ibuclubs_mobile/features/home/domain/social_media_link.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ClubsRepository _clubsRepository;
  final ActivityRepository _activityRepository;
  HomeBloc(this._clubsRepository, this._activityRepository)
    : super(HomeState.initial()) {
    on<_Initialize>(_onInitialize);
    on<_NameChanged>(_onNameChanged);
    on<_NameLeft>(_onNameLeft);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_DescriptionLeft>(_onDescriptionLeft);
    on<_SocialMediaLinkChanged>(_onSocialMediaLinkChanged);
    on<_SocialMediaLinkLeft>(_onSocialMediaLinkLeft);
    on<_SubmitClub>(_onSubmitClub);
  }

  Future<void> _onInitialize(_Initialize event, Emitter<HomeState> emit) async {
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
  }

  Future<void> _onNameChanged(
    _NameChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith.form(name: state.form.name.changed(event.name)));
  }

  Future<void> _onNameLeft(_NameLeft event, Emitter<HomeState> emit) async {
    emit(state.copyWith.form(name: state.form.name.left()));
  }

  Future<void> _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith.form(
        description: state.form.description.changed(event.description),
      ),
    );
  }

  Future<void> _onDescriptionLeft(
    _DescriptionLeft event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith.form(description: state.form.description.left()));
  }

  Future<void> _onSocialMediaLinkChanged(
    _SocialMediaLinkChanged event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith.form(
        socialMediaLink: state.form.socialMediaLink.changed(
          event.socialMediaLink,
        ),
      ),
    );
  }

  Future<void> _onSocialMediaLinkLeft(
    _SocialMediaLinkLeft event,
    Emitter<HomeState> emit,
  ) async {
    emit(
      state.copyWith.form(socialMediaLink: state.form.socialMediaLink.left()),
    );
  }

  Future<void> _onSubmitClub(_SubmitClub event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(
        form: state.form.copyWith(
          name: state.form.name.left(),
          description: state.form.description.left(),
          socialMediaLink: state.form.socialMediaLink.left(),
        ),
      ),
    );

    if (!state.form.isValid) {
      return;
    }

    emit(state.copyWith(requestState: RequestState.processing()));

    final result = await _clubsRepository.createClub(
      state.form.name.input.value,
      state.form.description.input.value,
      state.form.socialMediaLink.input.value,
    );

    emit(
      state.copyWith(
        requestState: result.fold(
          () => RequestState.success(unit),
          (failure) => RequestState.failed(failure),
        ),
      ),
    );
  }
}
