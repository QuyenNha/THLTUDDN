import 'package:flutter/material.dart';
import '../../../../size_config.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
        child: Column(
        children: [
        Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          child: Column(
            children: [
              OfferCard(
                image: "assets/images/Image Banner 1.PNG",
                category: "Truyền cảm hứng",
                numOfBrands: 18,
                press: () {},
              ),
              OfferCard(
                image: "assets/images/Image Banner 2.jpg",
                category: "Truyện tranh",
                numOfBrands: 24,
                press: () {},
              ),
              OfferCard(
                image: "assets/images/Image Banner 3.PNG",
                category: "Kinh tế",
                numOfBrands: 22,
                press: () {},
              ),
              OfferCard(
                image: "assets/images/Image Banner 4.png",
                category: "Marketing",
                numOfBrands: 11,
                press: () {},
              ),
              OfferCard(
                image: "assets/images/Image Banner 5.jpg",
                category: "Văn học",
                numOfBrands: 11,
                press: () {},
              ),
              OfferCard(
                image: "assets/images/Image Banner 6.png",
                category: "Tin học",
                numOfBrands: 11,
                press: () {},
              ),
              OfferCard(
                image: "assets/images/Image Banner 7.jpg",
                category: "Sách giáo khoa",
                numOfBrands: 11,
                press: () {},
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    ),
        ),
    );
  }
}

class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: getProportionateScreenWidth(20)),
      // vertical trên là khoảng cách giữa các item, horizontal trên là khoảng cách với màn hình
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(350),
          height: getProportionateScreenWidth(90),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
