import 'activity_model.dart';

class Destination {
  String? imageUrl;
  String? city;
  String? country;
  String? description;
  List<Activity>? activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
});
}

List<Activity> activities = [
  Activity(
    imageUrl: '',
    name: 'London',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: '',
    city: 'London',
    country: 'Sightseeing Tour',
    description: 'hello world',
    activities: activities,
  ),
];