import 'package:flutter/material.dart';

class FlutterFeatureNoInternet extends StatelessWidget {
  final Color? color;
  const FlutterFeatureNoInternet({super.key,this.color});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.signal_wifi_off, // No internet icon
            size: 50,
            color: color ?? Colors.black,
          ),
          const SizedBox(height: 16),
          Text(
            'No Internet Connection',
            style: TextStyle(
              color: color ?? Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Please check your connection and try again.',
            style: TextStyle(
              color: color ?? Colors.black,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}