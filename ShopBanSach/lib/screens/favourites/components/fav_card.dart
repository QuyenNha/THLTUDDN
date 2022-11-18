import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tesst/models/Cart.dart';
import 'package:tesst/models/Fav.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class FavCard extends StatelessWidget {
  const FavCard({
    Key? key,
    required this.fav,
  }) : super(key: key);
  final Fav fav;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(fav.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              fav.product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                text: "\$${fav.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
              ),
            ),
            SvgPicture.asset(
              "assets/icons/Heart Icon_2.svg",
              color:Color(0xFFFF4848),
              height: getProportionateScreenWidth(16),
            ),
          ],
        )
      ],
    );
  }
}
