import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/iso_8601_duration_serializer.dart';
import 'package:ibuclubs_mobile/auth/authentication/sign_in/data/dto/sign_in_dto.dart';
import 'package:ibuclubs_mobile/auth/token/data/dto/jwt_dto.dart';
import 'package:ibuclubs_mobile/auth/token/data/dto/refresh_token_dto.dart';
import 'package:ibuclubs_mobile/core/data/models/error_model.dart';
import 'package:ibuclubs_mobile/features/clubs/data/dto/club_dto.dart';
import 'package:injectable/injectable.dart';

part 'serializers.g.dart';

@SerializersFor([ErrorModel, SignInDto, JwtDto, RefreshTokenDto, ClubDto])
final Serializers serializers = _$serializers;

@module
abstract class BuiltValueSerializers {
  @lazySingleton
  Serializers get createSerializers =>
      (serializers.toBuilder()
            ..add(Iso8601DateTimeSerializer())
            ..add(Iso8601DurationSerializer())
            ..addPlugin(StandardJsonPlugin()))
          .build();
}
