import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_in_dto.g.dart';

abstract class SignInDto implements Built<SignInDto, SignInDtoBuilder> {
  String get email;
  String get password;

  factory SignInDto([void Function(SignInDtoBuilder) updates]) = _$SignInDto;

  SignInDto._();

  static Serializer<SignInDto> get serializer => _$signInDtoSerializer;
}
