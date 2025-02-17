import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hendshake_assesment/Provider/activity_provider.dart';

import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final activityProvider = Provider.of<ActivityProvider>(context);
    final activities = activityProvider.activities.reversed.toList();
    var sortedActivities =
        activities.reversed.toList().sublist(0, min(activities.length, 50));
    if (activityProvider.selectedItem != null) {
      sortedActivities = sortedActivities
          .where((activity) => activity.type == activityProvider.selectedItem)
          .toList();
    }

    return Scaffold(
      appBar: AppBar(title: Text('History')),
      body: ListView.builder(
        itemCount: sortedActivities.length,
        itemBuilder: (context, index) {
          final activity = sortedActivities[index];
          return ListTile(
            title: Text(activity.activity),
            subtitle: Text(
                "Price: ${activity.price.toString()} Type: ${activity.type}"),
          );
        },
      ),
    );
  }
}
