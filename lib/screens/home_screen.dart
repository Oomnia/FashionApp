import 'package:fashion_app/models/category_model.dart';
import 'package:fashion_app/widgets/categories.dart';
import 'package:fashion_app/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> categoryList = [
    CategoryModel(
      image: 'lib/assets/images/categories/woman.png',
      name: 'Women',
    ),
    CategoryModel(image: 'lib/assets/images/categories/men.png', name: 'Men'),
    CategoryModel(image: 'lib/assets/images/categories/kids.png', name: 'Kids'),

    CategoryModel(
      image: 'lib/assets/images/categories/deals.png',
      name: 'Deals',
    ),
    CategoryModel(
      image: 'lib/assets/images/categories/health.png',
      name: 'Health',
    ),
  ];
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('lib/assets/videos/Screen_Recording.mp4')
          ..initialize().then((_) {
            setState(() {
              _controller.play();
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Runaway',
        suffix: 'lib/assets/svgs/notification.svg',
        prefix: 'lib/assets/svgs/menu.svg',
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 10),
            child: Text(
              'Categories',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Categories(categoryList: categoryList),
          ),
        ],
      ),
    );
  }
}
