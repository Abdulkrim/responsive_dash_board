import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder()
            ),
            child: Center(child: SvgPicture.asset(image)),
        ),
        const Spacer(),
        Transform.rotate(
                angle: -1.5707963268 * 2,
                child: const Icon(
                  color: Color(0xFF064061),
                  Icons.arrow_back_ios_new_outlined
                  )
                )
      ],
    ); 
  }
}
