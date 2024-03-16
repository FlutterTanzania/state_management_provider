import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/screens/home.dart';
import 'package:state_management_provider/services/fetch_us_cities.dart';
import 'package:state_management_provider/services/int_stream_generator.dart';

import 'notifiers/counter_notifier.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterNotifier()),
        FutureProvider<List<String>>(create: (_) => FetchUSCities().fetchUSCities, initialData: const []),
        StreamProvider<int>(create: (_) => IntStreamGenerator.generateIntStream(), initialData: 0)
      ],
      child: const MyApp(),
    ),
  );
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
