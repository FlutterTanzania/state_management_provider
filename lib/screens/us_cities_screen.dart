import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsCities extends StatefulWidget {
  const UsCities({super.key});

  @override
  State<UsCities> createState() => _UsCitiesState();
}

class _UsCitiesState extends State<UsCities> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Consumer<List<String>>(
        builder: (context, cities, child) {
          return cities.isEmpty
              ? const _CitiesLoadingIndicator()
              : _ShowUsCities(
                  usCities: cities,
                );
        },
      ),
    );
  }
}

class _CitiesLoadingIndicator extends StatelessWidget {
  const _CitiesLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Fetching US Cities.....'),
          SizedBox(
            height: 16,
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}

class _ShowUsCities extends StatelessWidget {
  final List<String> usCities;

  const _ShowUsCities({super.key, required this.usCities});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: usCities
            .map(
              (city) => Padding(
                padding: const EdgeInsets.only(left: 18, bottom: 8),
                child: Text(
                  city,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
