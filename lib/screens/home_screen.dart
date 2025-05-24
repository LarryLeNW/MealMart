import 'package:flutter/material.dart';
import 'package:v1_ecommerce/models/food_item.dart';
import 'package:v1_ecommerce/widgets/auth/login_dialog.dart';
import 'package:v1_ecommerce/widgets/home/about.dart';
import 'package:v1_ecommerce/widgets/home/category_service.dart';
import '../models/food_category.dart';
import '../models/restaurant.dart';
import '../screens/restaurant_screen.dart';
import '../screens/search_screen.dart';
import '../widgets/home/category_item.dart';
import '../widgets/home/promotion_banner.dart';
import '../widgets/home/top_food_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _openLoginDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => const LoginDialog(),
    );

    if (result == true) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Đăng nhập thành công')));
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Đăng nhập bị hủy')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HELLO FRESH'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () => _openLoginDialog(context),
              child: const CircleAvatar(
                backgroundColor: Color.fromARGB(255, 162, 236, 128),
                child: Text('Larry'),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 8),
                      Text(
                        'Tìm kiếm món ăn, nhà hàng...',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Promotion Banner
            const PromotionBanner(),

            // category service
            CategoryService(),
            // Categories
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Danh mục đồ ăn hôm nay',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                itemCount: dummyCategories.length,
                itemBuilder: (context, index) {
                  return CategoryItem(category: dummyCategories[index]);
                },
              ),
            ),

            // Promotions
            // Padding(
            //   padding: const EdgeInsets.symmetric(
            //     horizontal: 16.0,
            //     vertical: 8.0,
            //   ),
            //   child: Text(
            //     'Khuyến mãi',
            //     style: Theme.of(context).textTheme.titleLarge,
            //   ),
            // ),

            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemCount: dummyRestaurants.where((r) => r.promotion).length,
            //   itemBuilder: (context, index) {
            //     final restaurant =
            //         dummyRestaurants.where((r) => r.promotion).toList()[index];
            //     return RestaurantCard(
            //       restaurant: restaurant,
            //       onTap: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //             builder:
            //                 (context) => TopFoodScreen(restaurant: restaurant),
            //           ),
            //         );
            //       },
            //     );
            //   },
            // ),

            // TOP FOODS SESSION
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Được yêu thích nhất',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.red.shade300,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.red.shade400,
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dummyFoods.length,
              itemBuilder: (context, index) {
                return TopFoodCard(
                  food: dummyFoods[index],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => TopFoodScreen(food: dummyFoods[index]),
                      ),
                    );
                  },
                );
              },
            ),
            About(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Tìm kiếm'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Đơn hàng'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Tài khoản'),
        ],
      ),
    );
  }
}
