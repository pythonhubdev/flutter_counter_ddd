import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_counter_ddd/application/counter_events.dart';
import 'package:flutter_counter_ddd/application/counter_state_controller.dart';
import 'package:flutter_counter_ddd/application/counter_states.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final counterStateProvider =
    StateNotifierProvider<CounterStateNotifier, CounterStates>(
  (ref) => CounterStateNotifier(),
);

class CounterPage extends HookConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController counterInputController = useTextEditingController();
    final counterState = ref.watch(counterStateProvider);
    final counterEvents = ref.watch(counterStateProvider.notifier);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Counter - DDD"),
          centerTitle: false,
          backgroundColor: const Color(0xff6200ee).withOpacity(0.2),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterState.counter.toString(),
                style: const TextStyle(fontSize: 60),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      controller: counterInputController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(),
                      ),
                      onChanged: (String value) {
                        if(value.isNotEmpty){
                          counterEvents.mapEventsToStates(
                            CounterEvents.onInputChange(
                              int.parse(value),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      counterEvents.mapEventsToStates(
                        CounterEvents.onSubmitPressed(),
                      );
                      counterInputController.text = '0';
                    },
                    child: const Icon(
                      Icons.keyboard_arrow_right_rounded,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(
                Icons.plus_one_rounded,
              ),
              onPressed: () {
                counterEvents.mapEventsToStates(
                  CounterEvents.onIncrementPressed(),
                );
              },
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              child: const Icon(
                Icons.exposure_minus_1_rounded,
              ),
              onPressed: () {
                counterEvents.mapEventsToStates(
                  CounterEvents.onDecrementPressed(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
