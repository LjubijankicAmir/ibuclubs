import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';
import 'package:ibuclubs_mobile/core/presentation/form/form.dart';
import 'package:ibuclubs_mobile/features/home/domain/description.dart';
import 'package:ibuclubs_mobile/features/home/domain/name.dart';
import 'package:ibuclubs_mobile/features/home/domain/social_media_link.dart';

part 'submit_club_form_state.freezed.dart';

@freezed
class SubmitClubFormState with _$SubmitClubFormState, Form {
  factory SubmitClubFormState(
    ValueFormField<Name> name,
    ValueFormField<Description> description,
    ValueFormField<SocialMediaLink> socialMediaLink,
  ) = _SubmitClubFormState;

  factory SubmitClubFormState.empty() => SubmitClubFormState(
    ValueFormField<Name>.pure(Name.empty()),
    ValueFormField<Description>.pure(Description.empty()),
    ValueFormField<SocialMediaLink>.pure(SocialMediaLink.empty()),
  );

  SubmitClubFormState._();

  @override
  BuiltList<ValueFormField<ValueObject<Object>>> getFields() =>
      BuiltList([name, description, socialMediaLink]);
}
