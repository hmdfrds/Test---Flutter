import 'package:flutter/material.dart';
import 'package:hendshake_assesment/Provider/activity_provider.dart';
import 'package:hendshake_assesment/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ActivityProvider(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
