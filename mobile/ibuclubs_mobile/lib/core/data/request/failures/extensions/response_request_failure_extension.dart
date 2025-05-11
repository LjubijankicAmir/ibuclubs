import 'package:chopper/chopper.dart';
import 'package:ibuclubs_mobile/core/data/models/error_model.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';

extension ResponseRequestFailureExtension on Response {
  RequestFailure toRequestFailure() {
    if (statusCode == 400) {
      if (error.toString().contains('Invalid refresh token')) {
        return const JwtExpired();
      }
      return BadRequest(error! as ErrorModel);
    }
    if (statusCode == 401) return const Unauthorized();
    if (statusCode == 404) return const NotFound();
    if (statusCode > 500) return const ServerError();

    return const UnexpectedError();
  }
}
