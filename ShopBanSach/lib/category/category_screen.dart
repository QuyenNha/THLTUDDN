import 'package:flutter/material.dart';
import '../components/coustom_bottom_nav_bar.dart';
import '../enums.dart';
import 'components/bodycategory.dart';

class CategoryScreen extends StatelessWidget {
  static String routeName = "/category";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Danh mục",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
