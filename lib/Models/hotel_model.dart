class Hotel {
  String? name;
  String? address;
  String? imageUrl;
  int? price;

  Hotel({this.name, this.address, this.imageUrl, this.price});
}

List<Hotel> hotels = [
  Hotel(
      name: 'Hotel 0',
      address: 'Nigeria',
      price: 150,
      imageUrl:
          'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg'),
  Hotel(
      name: 'Hotel 1',
      address: 'Nigeria',
      price: 151,
      imageUrl:
          'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg'),
  Hotel(
      name: 'Hotel 2',
      address: 'Nigeria',
      price: 152,
      imageUrl:
          'assets/images/depositphotos_226524070-stock-photo-shopping-cart-yellow-background.jpg')
];
