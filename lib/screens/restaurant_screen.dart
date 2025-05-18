import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../models/restaurant.dart';
import '../screens/food_detail_screen.dart';
import '../widgets/home/food_item_card.dart';

class TopFoodScreen extends StatelessWidget {
  final FoodItem food;

  const TopFoodScreen({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final restaurantFoodItems = dummyFoods;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                food.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(food.imageUrl, fit: BoxFit.cover),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.amber, size: 20),
                      const SizedBox(width: 4),
                      Text(
                        food.rating.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 16),
                      const Icon(
                        Icons.access_time,
                        color: Colors.grey,
                        size: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(food.deliveryTime),
                      const SizedBox(width: 4),
                      Text(food.deliveryFee),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Divider(height: 32),
                  Text('Menu', style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final foodItem = restaurantFoodItems[index];
              return FoodItemCard(
                foodItem: foodItem,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => FoodDetailScreen(
                            foodItem: foodItem,
                            restaurant: foodItem,
                          ),
                    ),
                  );
                },
              );
            }, childCount: restaurantFoodItems.length),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
