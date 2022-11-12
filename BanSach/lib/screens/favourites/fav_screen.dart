import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';

import 'components/bodyfav.dart';

class FavScreen extends StatelessWidget {
  static String routeName = "/fav";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Yêu thích",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
