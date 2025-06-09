part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.initialize() = _Initialize;
  const factory HomeEvent.nameChanged(Name name) = _NameChanged;
  const factory HomeEvent.nameLeft() = _NameLeft;
  const factory HomeEvent.descriptionChanged(Description description) =
      _DescriptionChanged;
  const factory HomeEvent.descriptionLeft() = _DescriptionLeft;
  const factory HomeEvent.socialMediaLinkChanged(
    SocialMediaLink socialMediaLink,
  ) = _SocialMediaLinkChanged;
  const factory HomeEvent.socialMediaLinkLeft() = _SocialMediaLinkLeft;
  const factory HomeEvent.submitClub() = _SubmitClub;
}
