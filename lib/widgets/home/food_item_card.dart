import 'package:flutter/material.dart';
import '../../models/food_item.dart';

class FoodItemCard extends StatelessWidget {
  final FoodItem foodItem;
  final VoidCallback onTap;
  final bool showRestaurantName;
  final String? restaurantName;

  const FoodItemCard({
    Key? key,
    required this.foodItem,
    required this.onTap,
    this.showRestaurantName = false,
    this.restaurantName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Food Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: Image.asset(
                foodItem.imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),

            // Food Info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      foodItem.name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (showRestaurantName && restaurantName != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        restaurantName!,
                        style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      ),
                    ],
                    const SizedBox(height: 4),
                    Text(
                      foodItem.description,
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${foodItem.price.toStringAsFixed(0)}₫',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Add Button
            Padding(
              padding: const EdgeInsets.all(12),
              child: IconButton(
                icon: const Icon(Icons.add_circle),
                color: Theme.of(context).primaryColor,
                onPressed: onTap,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
