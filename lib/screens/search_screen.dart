import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../models/restaurant.dart';
import '../screens/food_detail_screen.dart';
import '../screens/restaurant_screen.dart';
import '../widgets/home/food_item_card.dart';
import '../widgets/home/top_food_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  List<Restaurant> filteredRestaurants = [];
  List<FoodItem> filteredFoodItems = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    filteredRestaurants = dummyRestaurants;
    filteredFoodItems = dummyFoods;
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    super.dispose();
  }

  void _filterResults(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredRestaurants = dummyRestaurants;
        filteredFoodItems = dummyFoods;
      } else {
        filteredRestaurants =
            dummyRestaurants
                .where(
                  (restaurant) =>
                      restaurant.name.toLowerCase().contains(
                        query.toLowerCase(),
                      ) ||
                      restaurant.cuisine.toLowerCase().contains(
                        query.toLowerCase(),
                      ),
                )
                .toList();

        filteredFoodItems =
            dummyFoods
                .where(
                  (item) =>
                      item.name.toLowerCase().contains(query.toLowerCase()) ||
                      item.description.toLowerCase().contains(
                        query.toLowerCase(),
                      ),
                )
                .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            hintText: 'Tìm kiếm thực đơn của bạn',
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          onChanged: _filterResults,
          autofocus: true,
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [Tab(text: 'Thức uống'), Tab(text: 'Món ăn')],
          labelColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // // Restaurants Tab
          // filteredRestaurants.isEmpty
          //     ? const Center(child: Text('Không tìm thấy thực đơn nào'))
          //     : ListView.builder(
          //       itemCount: filteredRestaurants.length,
          //       itemBuilder: (context, index) {
          //         return TopFoodCard(
          //           food: filteredRestaurants[index],
          //           onTap: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder:
          //                     (context) => TopFoodScreen(
          //                       restaurant: filteredRestaurants[index],
          //                     ),
          //               ),
          //             );
          //           },
          //         );
          //       },
          //     ),

          // // Food Items Tab
          // filteredFoodItems.isEmpty
          //     ? const Center(child: Text('Không tìm thấy thực đơn nào'))
          //     : ListView.builder(
          //       itemCount: filteredFoodItems.length,
          //       itemBuilder: (context, index) {
          //         final foodItem = filteredFoodItems[index];
          //         final restaurant = dummyRestaurants.firstWhere(
          //           (r) => r.id == foodItem.id,
          //         );

          //         return FoodItemCard(
          //           foodItem: foodItem,
          //           onTap: () {
          //             Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder:
          //                     (context) => FoodDetailScreen(
          //                       foodItem: foodItem,
          //                       restaurant: foodItem,
          //                     ),
          //               ),
          //             );
          //           },
          //           showRestaurantName: true,
          //           restaurantName: restaurant.name,
          //         );
          //       },
          //     ),
        ],
      ),
    );
  }
}
