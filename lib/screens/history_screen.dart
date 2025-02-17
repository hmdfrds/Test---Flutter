import 'package:flutter/material.dart';
import 'package:hendshake_assesment/Provider/activity_provider.dart';

import 'package:provider/provider.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('History')),
      body: ListView.builder(
        itemCount: Provider.of<ActivityProvider>(context).activities.length,
        itemBuilder: (context, index) {
          final activity =
              Provider.of<ActivityProvider>(context).activities[index];
          return ListTile(
            title: Text(activity.activity),
            subtitle: Text(activity.price.toString()),
          );
        },
      ),
    );
  }
}
