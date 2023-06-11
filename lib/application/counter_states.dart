import "package:freezed_annotation/freezed_annotation.dart";

part "counter_states.freezed.dart";

@freezed
class CounterStates with _$CounterStates {
  const factory CounterStates({
    required int counter,
    required int newCounterValue,
  }) = _CounterStates;

  factory CounterStates.initial() => const CounterStates(
        counter: 0,
        newCounterValue: 0,
      );
}
