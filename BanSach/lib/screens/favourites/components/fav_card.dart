import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Cart.dart';

import '../../../../constants.dart';
import '../../../../size_config.dart';

class FavCard extends StatelessWidget {
  const FavCard({//Biến const và object gán cho nó không được phép thay đổi giá trị
    Key? key,
    required this.cart,//đây là lấy thông tin xong thả vào biến cart
  }) : super(key: key);// super là method dùng để gọi lại class của package khác mà kh cần extend(coi lại)
  //truyền các thông tin của cart.dart qua để có thể gọi lại dùng
// nguyên hàm phía trên là constructor sử dụng super để gọi class
  final Cart cart; // kiểu khai báo Cart cho cart để có thể lấy giá trị của class Cart

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),// tạo ra phần đệm( nghĩa là khoảng trổng giữa hình ảnh được đưa vào với cái sizebox của khung chứa hình ảnh) với khoảng cách là 10mm với tất cả các phía
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),// bo góc 4 phía
              ),
              child: Image.asset(cart.product.images[0]),//[0] là lấy hình ảnh đầu tiên của sản phẩm được demo trong cart?
              //Nghĩa là lấy hình ảnh của product trong lớp Cart
            ),
          ),
        ),
        //Phần này là design phần hình ảnh của sản phẩm trong giỏ hàng
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,//Vị trí của các phần tử trong children sẽ ở vị trí sát cạnh của row
          children: [
            Text(
              cart.product.title,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                text: "\$${cart.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
                children: [
                  TextSpan(
                      text: " x${cart.numOfItem}",
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
            //Phần này design tên sản phẩm trong cart
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
