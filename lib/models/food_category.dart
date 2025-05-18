class FoodCategory {
  final String id;
  final String name;
  final String imageUrl;

  FoodCategory({required this.id, required this.name, required this.imageUrl});
}

List<FoodCategory> dummyCategories = [
  FoodCategory(
    id: '1',
    name: 'Milchprodukte',
    imageUrl: 'assets/images/category_cafe.jpg',
  ),
  FoodCategory(
    imageUrl: 'assets/images/category_cafe.jpg',
    id: '2',
    name: 'Gemüse & Salate',
  ),
  FoodCategory(
    id: '3',
    name: 'Obst & Beeren',
    imageUrl: 'assets/images/category_cafe.jpg',
  ),
  FoodCategory(
    id: '4',
    name: 'Meeresfrüchte',
    imageUrl: 'assets/images/category_cafe.jpg',
  ),
  FoodCategory(
    id: '5',
    name: 'Getränke',
    imageUrl: 'assets/images/category_cafe.jpg',
  ),
];
