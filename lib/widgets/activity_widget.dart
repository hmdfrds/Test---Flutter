import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/activity.dart';
import 'dart:convert';

class ActivityPanel extends StatefulWidget {
  const ActivityPanel({super.key});

  @override
  State<ActivityPanel> createState() => _ActivityPanelState();
}

class _ActivityPanelState extends State<ActivityPanel> {
  Activity? activityModel;

  fetchActivity() async {
    final url = Uri.parse('https://bored.api.lewagon.com/api/activity');
    final response = await http.get(url);
    setState(() {
      activityModel = Activity.fromJson(jsonDecode(response.body));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(activityModel == null ? "" : activityModel!.activity),
        Text(activityModel == null ? "" : activityModel!.price.toString()),
        ElevatedButton(
          onPressed: fetchActivity,
          child: Text("Next"),
        ),
      ],
    );
  }
}
