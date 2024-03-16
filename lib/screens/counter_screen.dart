import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider/notifiers/counter_notifier.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CounterNotifier>(context);

    return Scaffold(
      body: Center(
        child: Consumer<CounterNotifier>(
          builder: (context, counter, child) {
            return Column(
              children: [
                child ?? Container(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  counter.count.toString(),
                  style: const TextStyle(fontSize: 45),
                ),
              ],
            );
          },
          child: const _OurTextContainer(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          provider.increment();
        },
      ),
    );
  }
}

class _OurTextContainer extends StatefulWidget {

  const _OurTextContainer();

  @override
  State<_OurTextContainer> createState() => _OurTextContainerState();
}

class _OurTextContainerState extends State<_OurTextContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      color: const Color(0xFFFF0000).withOpacity(0.3),
      child: const Center(
        child: Text(
          'You have pushed the button this many times',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
