import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class productsFilter extends StatelessWidget {
  const productsFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Row(
        children: [
          Text(
            'Sort by',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          Gap(10),
          SvgPicture.asset(
            'lib/assets/svgs/select.svg',
            width: 12,
            height: 19,
          ),
          Spacer(),
          SvgPicture.asset(
            'lib/assets/svgs/filter.svg',
            width: 12,
            height: 19,
          ),
          Gap(10),
    
          Text(
            'Filter',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
          Gap(10),
    
          SvgPicture.asset(
            'lib/assets/svgs/grid-outline.svg',
            width: 20,
            height: 20,
          ),
          Gap(10),
    
          SvgPicture.asset(
            'lib/assets/svgs/group.svg',
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
