import 'package:flutter/material.dart';

class FlutterFeatureEmpty extends StatelessWidget {
  final String message;
  const FlutterFeatureEmpty({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.hourglass_empty, // Empty icon
            size: 50,
            color: Colors.grey,
          ),
          const SizedBox(height: 16),
          const Text(
            'No Data Found',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}