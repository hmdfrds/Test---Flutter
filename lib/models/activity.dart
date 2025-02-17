class Activity {
  final String activity;
  final num price;
  final String type;

  Activity({required this.activity, required this.price, required this.type});

  factory Activity.fromJson(Map<String, dynamic> json) {
    return Activity(
        activity: json['activity'], price: json['price'], type: json['type']);
  }
}
