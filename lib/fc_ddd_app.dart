import "package:flutter/material.dart";
import "package:flutter_counter_ddd/pages/counter_page.dart";

class FlutterCounterDDDApp extends StatelessWidget {
  const FlutterCounterDDDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Counter - DDD",
      home: const CounterPage(),
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
    );
  }
}
