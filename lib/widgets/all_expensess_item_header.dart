import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: const ShapeDecoration(
        color: Color(0xFFFAFAFA),
        shape: OvalBorder()
        ),
        child: SvgPicture.asset(image),
    );
  }
}
