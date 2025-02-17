import 'package:flutter/foundation.dart';
import 'package:hendshake_assesment/models/activity.dart';

class ActivityProvider extends ChangeNotifier {
  List<Activity> _activities = [];
  String? _selectedItem;

  List<Activity> get activities => _activities;
  String? get selectedItem => _selectedItem;

  void addActivity(Activity activity) {
    _activities.add(activity);
    notifyListeners();
  }

  void updateSelectedItem(String? item) {
    _selectedItem = item;
    notifyListeners();
  }
}
