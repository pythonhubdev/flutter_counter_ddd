import 'package:flutter_counter_ddd/application/counter_events.dart';
import 'package:flutter_counter_ddd/application/counter_states.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CounterStateNotifier extends StateNotifier<CounterStates> {
  CounterStateNotifier() : super(CounterStates.initial());

  void mapEventsToStates(CounterEvents events) {
    events.map(
      onIncrementPressed: (value) {
        state = state.copyWith(
          counter: state.counter + 1,
        );
      },
      onDecrementPressed: (value) {
        state = state.copyWith(
          counter: state.counter != 0 ? state.counter - 1 : 0,
        );
      },
      onSubmitPressed: (value) {
        state = state.copyWith(
          counter: state.newCounterValue,
          newCounterValue: 0
        );
      },
      onInputChange: (value) {
        state = state.copyWith(
          newCounterValue: value.newCounterValue
        );
      },
    );
  }
}
