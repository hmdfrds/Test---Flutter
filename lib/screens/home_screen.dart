import 'package:flutter/material.dart';
import 'package:hendshake_assesment/screens/history_screen.dart';
import 'package:hendshake_assesment/widgets/activity_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToHistoryScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HistoryScreen(),
        ),
      );
    }
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
