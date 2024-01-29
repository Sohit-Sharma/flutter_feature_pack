import 'package:flutter/material.dart';
import 'package:flutter_feature_pack/flutter_feature_pack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Feature Pack',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 50),
              const FlutterFeatureNoInternet(),
              const SizedBox(height: 50),
              FlutterFeatureError(errorMessage: 'Error',onRetry: ()=>{}),
              const SizedBox(height: 50),
              const FlutterFeatureEmpty(message: 'Empty'),
              const SizedBox(height: 50),
              const FlutterFeatureTextField(hint: "Enter Input"),
              const SizedBox(height: 50),
              const FlutterFeatureButton(),
            ],
          ),
        ),
      ),
    );
  }
}

