
import "package:freezed_annotation/freezed_annotation.dart";

part "counter_events.freezed.dart";

@freezed
class CounterEvents with _$CounterEvents {
  factory CounterEvents.onIncrementPressed() = OnIncrementPressed;
  factory CounterEvents.onDecrementPressed() = OnDecrementPressed;
  factory CounterEvents.onInputChange(int newCounterValue) = OnInputChange;
  factory CounterEvents.onSubmitPressed() = OnSubmitPressed;
}