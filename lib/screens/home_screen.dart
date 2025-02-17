import 'package:flutter/material.dart';
import 'package:hendshake_assesment/Provider/activity_provider.dart';
import 'package:hendshake_assesment/screens/history_screen.dart';
import 'package:hendshake_assesment/widgets/activity_widget.dart';
import 'package:provider/provider.dart';

import '../Provider/activity_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ActivityProvider activityProvider;
  navigateToHistoryScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HistoryScreen(),
      ),
    );
  }

  List<String> getDropdownSelection() {
    return activityProvider.activities
        .map((activity) => activity.type)
        .where((type) => type.isNotEmpty)
        .toSet()
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    activityProvider = Provider.of<ActivityProvider>(context);

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
            DropdownButton(
              value: activityProvider.selectedItem,
              items: getDropdownSelection()
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  activityProvider.updateSelectedItem(newValue);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
