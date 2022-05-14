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
    imageUrl:
        'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg',
    name: 'London',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl:
        'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg',
    name: 'London London London London',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 3,
    price: 30,
  ),
  Activity(
    imageUrl:
        'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg',
    name: 'London',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 4,
    price: 30,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl:
        'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg',
    city: 'London1',
    country: 'Sightseeing Tour',
    description: 'hello world',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg',
    city: 'Nigeria',
    country: 'Sightseeing Tour2',
    description: 'hello world2',
    activities: activities,
  ),
  Destination(
    imageUrl:
        'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg',
    city: 'India',
    country: 'Sightseeing Tour3',
    description: 'hello world',
    activities: activities,
  ),
];
