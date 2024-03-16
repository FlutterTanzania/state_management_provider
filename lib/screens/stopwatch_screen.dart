import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StopWatchScreen extends StatefulWidget {
  const StopWatchScreen({super.key});

  @override
  State<StopWatchScreen> createState() => _StopWatchScreenState();
}

class _StopWatchScreenState extends State<StopWatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<int>(builder: (context, number, child) {
      return SizedBox(
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
              fontSize: 45,
            ),
          ),
        ),
      );
    });
  }
}
