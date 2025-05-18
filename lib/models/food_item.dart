class FoodItem {
  final String id;
  final String name;
  final String imageUrl;
  final double rating;
  final String deliveryTime;
  final String deliveryFee;
  final String cuisine;
  final double distance;
  final bool promotion;
  final double price;
  final String description;

  FoodItem({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.cuisine,
    required this.distance,
    required this.price,
    required this.description,
    this.promotion = false,
  });
}

List<FoodItem> dummyFoods = [
  FoodItem(
    id: '1',
    name: 'Vegan Tex-Mex Black Bean Couscous Bowls',
    imageUrl: 'assets/images/foods/f5.jpeg',
    rating: 4.5,
    deliveryTime: '10-25 min',
    deliveryFee: '32,000₫',
    cuisine: 'haha',
    distance: 1.0,
    price: 12,
    description:
        "This twist on a Cobb salad takes all your favorite elements of the classic dish—crispy bacon, juicy chicken, creamy avocado, tangy blue cheese—and gives them a Southwestern spin thanks to additions like guacamole and crunchy blue corn tortilla chips. Toss everything with grape tomatoes and crisp baby lettuce, and you’re set!",
  ),
  FoodItem(
    id: '2',
    name: 'Creamy Lemon-Basil Pork Rigatoni',
    imageUrl: 'assets/images/foods/f4.jpeg',
    rating: 4.5,
    deliveryTime: '15-25 min',
    deliveryFee: '23,000₫',
    cuisine: 'haha',
    distance: 1.0,
    price: 12,
    description:
        "This twist on a Cobb salad takes all your favorite elements of the classic dish—crispy bacon, juicy chicken, creamy avocado, tangy blue cheese—and gives them a Southwestern spin thanks to additions like guacamole and crunchy blue corn tortilla chips. Toss everything with grape tomatoes and crisp baby lettuce, and you’re set!",
  ),
  FoodItem(
    id: '3',
    name: 'Easy Cheesy Black Bean Quesadillas',
    imageUrl: 'assets/images/foods/f3.jpeg',
    rating: 4.5,
    deliveryTime: '15-25 min',
    deliveryFee: '39,000₫',
    cuisine: 'haha',
    distance: 1.0,
    price: 123,
    description:
        "This twist on a Cobb salad takes all your favorite elements of the classic dish—crispy bacon, juicy chicken, creamy avocado, tangy blue cheese—and gives them a Southwestern spin thanks to additions like guacamole and crunchy blue corn tortilla chips. Toss everything with grape tomatoes and crisp baby lettuce, and you’re set!",
  ),
  FoodItem(
    id: '4',
    name: 'Warm Lentil, Kale & Feta Salad',
    imageUrl: 'assets/images/foods/f2.jpeg',
    rating: 4.5,
    deliveryTime: '15-25 min',
    deliveryFee: '23,000₫',
    cuisine: 'haha',
    distance: 1.0,
    price: 123,
    description:
        "This twist on a Cobb salad takes all your favorite elements of the classic dish—crispy bacon, juicy chicken, creamy avocado, tangy blue cheese—and gives them a Southwestern spin thanks to additions like guacamole and crunchy blue corn tortilla chips. Toss everything with grape tomatoes and crisp baby lettuce, and you’re set!",
  ),
  FoodItem(
    id: '5',
    name: 'Southwest Chicken & Bacon Cobb Salad',
    imageUrl: 'assets/images/foods/f1.jpeg',
    rating: 4.5,
    deliveryTime: '15-25 min',
    deliveryFee: '15,000₫',
    cuisine: 'haha',
    distance: 1.0,
    price: 123,
    description:
        "This twist on a Cobb salad takes all your favorite elements of the classic dish—crispy bacon, juicy chicken, creamy avocado, tangy blue cheese—and gives them a Southwestern spin thanks to additions like guacamole and crunchy blue corn tortilla chips. Toss everything with grape tomatoes and crisp baby lettuce, and you’re set!",
  ),
];
