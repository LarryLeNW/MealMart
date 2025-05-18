import 'package:flutter/material.dart';

class PromotionBanner extends StatelessWidget {
  const PromotionBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: const HSLColor.fromAHSL(0.5, 0, 0, 0.9).toColor(),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Text(
                      'KHUYẾN MÃI',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Giảm 50% cho đơn hàng đầu tiên',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Spacer(),
                  const Text(
                    'Sử dụng mã: WELCOME50',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              child: Image.asset(
                "assets/images/banner.png",
                fit: BoxFit.contain,
                height: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
