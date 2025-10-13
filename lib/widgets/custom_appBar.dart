import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.title, required this.prefix, required this.suffix});
  final String title;
  final String prefix;
  final String suffix;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: AppBar(
        centerTitle: true,
        toolbarHeight: preferredSize.height,
        leadingWidth: 35,
        leading: SvgPicture.asset(prefix),
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        actions: [
          SvgPicture.asset(
suffix,            height: 24,
            width: 24,
          ),
        ],
      ),
    );
  }
}
