class Restaurant {
  final String id;
  final String name;
  final String imageUrl;
  final double rating;
  final String deliveryTime;
  final String deliveryFee;
  final String cuisine;
  final double distance;
  final bool promotion;

  Restaurant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.cuisine,
    required this.distance,
    this.promotion = false,
  });
}

List<Restaurant> dummyRestaurants = [
  // Restaurant(
  //   id: '1',
  //   name: 'Phở Hà Nội',
  //   imageUrl: 'assets/images/pho.jpg',
  //   rating: 4.8,
  //   deliveryTime: '15-25 min',
  //   deliveryFee: '15,000₫',
  //   cuisine: 'Vietnamese',
  //   distance: 1.2,
  //   tags: ['Phở', 'Noodles', 'Soup'],
  //   promotion: true,
  // ),
  // Restaurant(
  //   id: '2',
  //   name: 'Bánh Mì Express',
  //   imageUrl: 'assets/images/banh_mi.jpg',
  //   rating: 4.6,
  //   deliveryTime: '10-20 min',
  //   deliveryFee: '10,000₫',
  //   cuisine: 'Vietnamese',
  //   distance: 0.8,
  //   tags: ['Bánh Mì', 'Sandwich', 'Breakfast'],
  // ),
  // Restaurant(
  //   id: '3',
  //   name: 'Cơm Tấm Sài Gòn',
  //   imageUrl: 'assets/images/com_tam.jpg',
  //   rating: 4.7,
  //   deliveryTime: '20-30 min',
  //   deliveryFee: '20,000₫',
  //   cuisine: 'Vietnamese',
  //   distance: 1.5,
  //   tags: ['Rice', 'Grilled Pork', 'Traditional'],
  //   promotion: true,
  // ),
  // Restaurant(
  //   id: '4',
  //   name: 'Bún Chả Hương Liên',
  //   imageUrl: 'assets/images/bun_cha.jpg',
  //   rating: 4.9,
  //   deliveryTime: '25-35 min',
  //   deliveryFee: '25,000₫',
  //   cuisine: 'Vietnamese',
  //   distance: 2.0,
  //   tags: ['Bún Chả', 'Noodles', 'Grilled Pork'],
  // ),
  Restaurant(
    id: '5',
    name: 'Highlands Coffee',
    imageUrl: 'assets/images/coffee.jpg',
    rating: 4.5,
    deliveryTime: '15-25 min',
    deliveryFee: '15,000₫',
    cuisine: 'Cafe',
    distance: 1.0,
  ),
];
