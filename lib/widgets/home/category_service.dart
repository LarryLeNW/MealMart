import 'package:flutter/material.dart';

class CategoryService extends StatelessWidget {
  final List<CategoryItemData> categories = [
    CategoryItemData('Thực đơn', Icons.fastfood_outlined),
    CategoryItemData('Kế hoạch', Icons.menu),
    CategoryItemData('Voucher', Icons.card_giftcard),
    CategoryItemData('Giao hàng', Icons.local_shipping),
    CategoryItemData('Quà tặng', Icons.card_giftcard_rounded),
    CategoryItemData('Công thức', Icons.kitchen),
    CategoryItemData('Sách', Icons.book),
    CategoryItemData('Tất cả', Icons.apps),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemCount: categories.length,
      itemBuilder: (context, index) {
        final category = categories[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.green.shade50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                category.iconData,
                size: 40,
                color: Theme.of(context).primaryColor,
              ),
              const SizedBox(height: 8),
              Text(
                category.title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class CategoryItemData {
  final String title;
  final IconData iconData;

  CategoryItemData(this.title, this.iconData);
}
