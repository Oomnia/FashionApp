import 'package:fashion_app/models/product_model.dart';
import 'package:fashion_app/screens/product_details.dart';
import 'package:fashion_app/widgets/custom_appBar.dart';
import 'package:fashion_app/widgets/product_item.dart';
import 'package:fashion_app/widgets/products_filter.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> productList = [
      ProductModel(
        image: 'lib/assets/images/models/Cloth 1.png',
        price: '£30',
        title: 'Gray coat and white T-sh..',
      ),
      ProductModel(
        image: 'lib/assets/images/models/Cloth 2.png',
        price: '£30',
        title: 'Gray coat and white T-sh..',
      ),
      ProductModel(
        image: 'lib/assets/images/models/Cloth 3.png',
        price: '£30',
        title: 'Gray coat and white T-sh..',
      ),
      ProductModel(
        image: 'lib/assets/images/models/Cloth 4.png',
        price: '£20',
        title: 'Top man black',
      ),
      ProductModel(
        image: 'lib/assets/images/models/Cloth 5.png',
        price: '£35',
        title: 'Top man black',
      ),
      ProductModel(
        image: 'lib/assets/images/models/Cloth 6.png',
        price: '£40',
        title: 'Deep gray essential regul..',
      ),
    ];
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Men',
        suffix: 'lib/assets/svgs/bi_bag.svg',
        prefix: 'lib/assets/svgs/arrow-left.svg',
      ),
      body: Column(
        children: [
          Divider(indent: 0, endIndent: 0, thickness: 1),
          productsFilter(),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 1 / 2,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final item = productList[index];
                return productItem(
                  image: item.image,
                  title: item.title,
                  price: item.price,
                  onTap: ()=> Navigator.push(context,MaterialPageRoute(builder: (c){
                    return ProductDetails(item: item);
                  })));
              },
            ),
          ),
        ],
      ),
    );
  }
}
