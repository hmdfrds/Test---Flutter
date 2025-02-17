import 'package:flutter/material.dart';
import 'package:hendshake_assesment/Provider/activity_provider.dart';
import 'package:hendshake_assesment/screens/history_screen.dart';
import 'package:hendshake_assesment/widgets/activity_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  navigateToHistoryScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HistoryScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ActivityPanel(),
            ElevatedButton(
              onPressed: navigateToHistoryScreen,
              child: Text("History"),
            ),
          ],
        ),
      ),
    );
  }
}
