import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/data/models/error_model.dart';

part 'request_failure.freezed.dart';

@freezed
class RequestFailure with _$RequestFailure {
  const factory RequestFailure.notFound() = NotFound;
  const factory RequestFailure.badRequest(ErrorModel error) = BadRequest;
  const factory RequestFailure.unauthorized() = Unauthorized;
  const factory RequestFailure.jwtExpired() = JwtExpired;
  const factory RequestFailure.serverError() = ServerError;
  const factory RequestFailure.unexpectedError() = UnexpectedError;
}
