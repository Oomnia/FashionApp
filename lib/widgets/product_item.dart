import 'package:flutter/material.dart';

class productItem extends StatelessWidget {
  const productItem({
    super.key,
    required this.image,
    required this.title,
    required this.price, required this.onTap,
  });

  final String image, title, price;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 200,
              height: 255,
              child: Image(image: AssetImage(image)),
            ),

            Text(title, maxLines: 1, style: TextStyle(fontSize: 14)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16),
                ),
                Icon(Icons.favorite_outline),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
