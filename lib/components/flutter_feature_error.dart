import 'package:flutter/material.dart';

class FlutterFeatureError extends StatelessWidget {
  final Color? color;
  final String errorMessage;
  final Function? onRetry;
  const FlutterFeatureError({super.key, this.color,required this.errorMessage, this.onRetry});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.error, // Error icon
            size: 50,
            color: color ?? Colors.black,
          ),
          const SizedBox(height: 16),
          Text(
            'Oops! Something went wrong.',
            style: TextStyle(
              color: color ?? Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            errorMessage,
            style: TextStyle(
              color: color ?? Colors.black,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          if (onRetry != null)
            const SizedBox(height: 16),
          if (onRetry != null)
            ElevatedButton(
              onPressed: () => onRetry!(),
              child: Text('Retry',style: TextStyle(
                color: color ?? Colors.black,
                fontSize: 14,
              ),),
            ),
        ],
      ),
    );
  }
}