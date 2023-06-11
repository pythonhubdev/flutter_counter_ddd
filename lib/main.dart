import 'package:flutter/cupertino.dart';
import 'package:flutter_counter_ddd/fc_ddd_app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: FlutterCounterDDDApp(),
    ),
  );
}
