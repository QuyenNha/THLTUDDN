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
      "assets/images/product1.jpg",
      "assets/images/product11.jpg",
      "assets/images/product12.jpg",
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
      "assets/images/product2.png",
      "assets/images/product21.png",
      "assets/images/product22.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Thám tử lừng danh Conan",
    price: "60.000",
    description: description2,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/product3.png",
      "assets/images/product31.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Bí mật tư duy triệu phú",
    price: "60.000",
    description: description3,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/product4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Marketing căn bản",
    price: "55.400",
    description: description4,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description1 =
    "Đã bao giờ, trong một buổi chiều, bất chợt xuất hiện trong đầu bạn một suy nghĩ: Hiện tại mình đang làm gì nhỉ?”."
    "Sau đó nhớ lại quá khứ, rồi tương lai, nên làm gì tiếp theo hay cứ mãi trôi nổi như một áng mây bình dị? "
    "Đến một lúc khi những vết nhăn nheo đã rõ mồn một trên trán, bỗng giật mình nhìn lại sự việc, nhìn lại cảnh quang,"
    "lòng lại im lặng hỏi một câu: “Mình đã sống cuộc đời tuổi trẻ có đáng giá không?”";
const String description2 =
    "Sera Masumi tiếp tục thăm dò Haibara Ai và ở thế đối đầu với Okiya Subaru!"
    "Trong khi đó, Conan đã tiến đến gần chân tưởng của “em gái ngoài lãnh địa” - Mary…!?"
    "Haneda Shukichi bất ngờ gặp án mạng tại buổi học nhóm shogi!"
    "Vụ án diễn biến bất ngờ với nhiều khúc ngoặt để rồi cuối cùng, Akai Shuichi xuất hiện…!? "
    "Không dừng lại ở đó, tập 98 còn mang tới vụ án giải mật mã của một người giúp việc, nơi cuộc đua phá án giữa Conan và Heiji đã khởi phát từ mưu kế của Ooka Momiji!!";
const String description3 =
    "Ai cũng có một cuộc sống, ai cũng làm việc cần cù, ai cũng ước mơ được thành công, nhưng không mấy ai may mắn học được cách tư duy độc đáo và tầm nhìn của những tỷ phú lừng danh đã tiết lộ trong cuốn sách giá trị này..."
    "- Wall Street Journal: Đây chính là một trong những cuốn sách giàu ảnh hưởng, rất thuyết phục và thực tế nhất về cách trở nên giàu có mà các bạn từng đọc được.”"
    "– Brian Tracy (Tác giả cuốn sách Làm giàu theo cách của bạn)\n Hãy nghiền ngẫm cuốn sách này như thể cuộc đời rồi sẽ phụ thuộc vào nó… về phương diện tài chính thì khả dĩ lắm đấy.”"
    " – Anthony Robbins (Nhà diễn thuyết, tác giả cuốn sách nổi tiếng Đánh thức con người phi thường trong bạn)";
const String description4 =
    "Cuốn sách  mang đến một cái nhìn thực tế về marketing và hỗ trợ tất cả những ai muốn tăng doanh thu, lợi nhuận, đồng tiền và RIO của doanh nghiệp mình. "
    "Dưới sự hướng dẫn của Don Sexton, bạn sẽ tự mình khám phá những chiến lược kinh doanh hiệu quả cũng như làm chủ chúng để tăng doanh thu, lợi nhuận, xây dựng thương hiệu và niềm tin của khách hàng.";