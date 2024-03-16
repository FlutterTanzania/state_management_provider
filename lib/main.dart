import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/screens/home.dart';

import 'notifiers/counter_notifier.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        //TODO: Add change notifier for CounterNotifier()
      ],
      child: const MyApp(),
    ),
  );

  // This is how we normally implement the runApp method.
  // runApp(
  //   const MyApp()
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
