import 'package:flutter/foundation.dart';
import 'package:hendshake_assesment/models/activity.dart';

class ActivityProvider extends ChangeNotifier {
  List<Activity> _activities = [];

  List<Activity> get activities => _activities;

  void addActivity(Activity activity) {
    _activities.add(activity);
    notifyListeners(); 
  }
}
