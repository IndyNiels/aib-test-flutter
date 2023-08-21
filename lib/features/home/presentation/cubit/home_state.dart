import 'package:aib_test/core/utils/enums/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default('') String appName,
    @Default(Status.initial) Status status,
  }) = _HomeState;
}
