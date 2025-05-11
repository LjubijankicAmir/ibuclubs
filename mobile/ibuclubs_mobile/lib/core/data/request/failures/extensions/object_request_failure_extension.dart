import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';

extension ObjectFailureExtension on Object {
  Future<RequestFailure> toRequestFailure() async {
    final exception = this;

    if (exception is RequestFailure) return exception;

    return const UnexpectedError();
  }
}
