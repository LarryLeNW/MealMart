import 'package:flutter/material.dart';

class About extends StatelessWidget {
  final List<Map<String, dynamic>> posts = [
    {
      'image': 'assets/images/introduce/chef_kid.jpg',
      'username': 'bdanielle1285',
      'description':
          'My little chef helping me make dinner tonight and trying out some of his new kitchen utensils I got him!',
    },
    {
      'image': 'assets/images/introduce/dog_helping.jpg',
      'username': 'lilpepthekelpie',
      'description': 'I’m helping out 👩‍🍳 #masterchef #bestboy',
    },
    {
      'image': 'assets/images/introduce/family_dinner.jpg',
      'username': 'mandi14ejd',
      'description':
          'Drew and the kids made mom dinner tonight! Drew and I had our doubts but WOW was it tasty!',
    },
    {
      'image': 'assets/images/introduce/kids_cooking.jpg',
      'username': 'our_lovely_stride',
      'description':
          'We had a cooking class yesterday and we had such an amazing time. 😁 They had such a great time working as a team and I can’t wait for our weekly cooking class 🙌😁',
    },
  ];

  @override
  Widget build(BuildContext context) {
    const double itemSize = 200;

    return Container(
      color: const Color(0xFFFAF7F0),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black87,
              ),
              children: [
                const TextSpan(text: 'Cook it. Love it. Tag it '),
                TextSpan(
                  text: '#HelloFreshPics',
                  style: TextStyle(color: Colors.grey[900]),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Follow us on Instagram @hellofresh',
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: itemSize,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: posts.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final post = posts[index];
                return Container(
                  width: itemSize,
                  height: itemSize,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Ảnh chiếm khoảng 2/3 chiều cao
                      SizedBox(
                        height: itemSize * 2 / 3,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(12),
                          ),
                          child: Image.asset(post['image'], fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(height: 8),
                      // Username
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          post['username'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // Description chiếm phần còn lại
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            post['description'],
                            style: const TextStyle(fontSize: 12),
                            textAlign: TextAlign.center,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
