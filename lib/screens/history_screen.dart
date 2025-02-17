import 'package:flutter/material.dart';
import 'package:hendshake_assesment/Provider/activity_provider.dart';

import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final activities = Provider.of<ActivityProvider>(context)
        .activities
        .reversed
        .toList()
        .sublist(0, 50);

    return Scaffold(
      appBar: AppBar(title: Text('History')),
      body: ListView.builder(
        itemCount: Provider.of<ActivityProvider>(context).activities.length,
        itemBuilder: (context, index) {
          final activity = activities[index];
          return ListTile(
            title: Text(activity.activity),
            subtitle: Text("Price: ${activity.price.toString()}"),
          );
        },
      ),
    );
  }
}
