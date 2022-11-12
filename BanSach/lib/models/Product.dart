import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final String price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/đáng giá bn2.png",
      "assets/images/tuôi trẻ đáng giá bn2.png",
      "assets/images/mặt sau tuổi trẻ đáng giá bn.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Tuổi trẻ đáng giá bao nhiêu",
    price: "58.000",
    description: description1,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Con chó nhỏ mang giỏ hoa hồng.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Con chó nhỏ mang giỏ hoa hồng",
    price: "60.000",
    description: description2,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/Có một ngôi nhà để trở về.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Có một ngôi nhà để trở về",
    price: "60.000",
    description: description3,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/trai-tim-nguoi-cha.jpg",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Trái tim người cha",
    price: "55.400",
    description: description4,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description1 =
    "Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ."
    "Bạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét...";
const String description2 =
    "Hello bạn nhỏ";
const String description3 =
    "Một ngày mới tốt lành";
const String description4 =
    "Chúc thuận lợi ra trường";