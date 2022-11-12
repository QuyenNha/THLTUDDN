import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Cart.dart';

import '../../../../size_config.dart';
import 'fav_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();// bước bắt buộc phải thực hiện khi khai báo lớp extend StatefullWidget
// Bước này ý nghĩa là tạo trạng thái mới cho lớp BodyState để nó có thể
// tiếp tục tạo nội dung trong class
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(// phần đệm chung cho tất cả sản phẩm
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),// khoảng cách bề ngang từ màn hình cách vào 20mm
      child: ListView.builder(// dùng listview.builder để tạo ra nhiều khung sản phẩm với phần setup bên dưới
        itemCount: demoCarts.length,// đếm số lượng các item được tạo trong democarts và truyền vào itemcount
        // itemcount sẽ truyền số lượng n vào listview để nó tạo ra n khung(phần)
        itemBuilder: (context, index) => Padding(// xây dựng cho mỗi item với phần đệm như bên dưới
          // và trong đó sẽ bao gồm phần xóa và phần nội dung item
          padding: EdgeInsets.symmetric(vertical: 10),//khoảng cách bề dọc giữa các item là 10
          child: Dismissible(
            key: Key(demoCarts[index].product.id.toString()),// chưa hiểu?
            direction: DismissDirection.endToStart,// nghĩa là trực tiếp kéo từ cuối đến đầu
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);//khi kéo trực tiếp từ cuối đến đầu thì sẽ xóa sản phẩm đó
              });
            },
            background: Container(//backround của phần xóa ( cái khung xóa màu đỏ)
              decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),// có màu đỏ
                borderRadius: BorderRadius.circular(15),// bo góc 4 phía
              ),
              child: Row(// trong khung đó sẽ có phần children
                children: [
                  Spacer(),// tạo ra khoảng cách
                  SvgPicture.asset("assets/icons/Trash.svg"),//icon thùng rác
                ],// Đoạn code trên để tạo ra nút xóa sản phẩm bằng cách kéo
              ),
            ),
            child: FavCard(cart: demoCarts[index]),// index nghĩa là cho phép lấy tất cả các item trong democart và truyền vào theo thứ tự
            // thả các thông tin của từng item(idex=0,1,..) trong democart vào cart đã khai báo ở CartCard để nó tạo ra từng box thông tin sản phẩm
          ),
        ),
      ),
    );
  }
}
