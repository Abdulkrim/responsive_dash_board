import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({super.key, required this.image, this.imageColor, this.imageBackground});
  final String image;
  final Color? imageColor;
  final Color? imageBackground;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration:  ShapeDecoration(
            color: imageBackground?? const Color(0xFFFAFAFA),
            shape: const OvalBorder()
            ),
            child: Center(child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(imageColor?? const Color(0xFF4EB7F2), BlendMode.srcIn),
              ),
              ),
        ),
        const Spacer(),
        Transform.rotate(
                angle: -1.5707963268 * 2,
                child:  Icon(
                  color: imageColor == null ?const Color(0xFF064061) : Colors.white,
                  Icons.arrow_back_ios_new_outlined
                  )
                )
      ],
    ); 
  }
}
