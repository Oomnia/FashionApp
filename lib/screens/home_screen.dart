import 'package:fashion_app/widgets/custom_appBar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppbar(
        title: 'Runaway',
        suffix: 'lib/assets/svgs/notification.svg',
        prefix: 'lib/assets/svgs/menu.svg',
      ),
    );
  }
}
