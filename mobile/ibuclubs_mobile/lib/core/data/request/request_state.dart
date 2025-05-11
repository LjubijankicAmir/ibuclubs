import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ibuclubs_mobile/core/data/request/failures/request_failure.dart';

part 'request_state.freezed.dart';

@freezed
class RequestState<S> with _$RequestState<S> {
  const factory RequestState.ready() = Ready;
  const factory RequestState.processing() = Processing;
  const factory RequestState.failed(RequestFailure failure) = Failed;
  const factory RequestState.success(S result) = Success;
}
