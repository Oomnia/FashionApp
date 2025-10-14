import 'package:fashion_app/models/category_model.dart';
import 'package:fashion_app/screens/categories_screen.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categoryList});
  final List<CategoryModel> categoryList;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(categoryList.length, (index) {
        return GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CategoriesScreen();
              },
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 16),
                child: CircleAvatar(
                  radius: 38,
                  child: Image(image: AssetImage(categoryList[index].image)),
                ),
              ),
              Text(
                categoryList[index].name,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        );
      }),
    );
  }
}
