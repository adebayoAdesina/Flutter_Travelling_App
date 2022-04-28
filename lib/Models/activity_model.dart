class Activity {
  String? imageUrl;
  String? name;
  String? type;
  List<String>? startTimes;
  int? rating;
  int? price;

  Activity({
    this.imageUrl,
    required this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price,
});
}