import 'package:flutter/widgets.dart';
import 'package:tesst/screens/cart/cart_screen.dart';
import 'package:tesst/screens/complete_profile/complete_profile_screen.dart';
import 'package:tesst/screens/details/details_screen.dart';
import 'package:tesst/screens/favourites/fav_screen.dart';
import 'package:tesst/screens/forgot_password/forgot_password_screen.dart';
import 'package:tesst/screens/home/home_screen.dart';
import 'package:tesst/screens/profile/profile_screen.dart';
import 'package:tesst/screens/sign_in/sign_in_screen.dart';
import 'package:tesst/screens/splash/splash_screen.dart';

import 'category/category_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  FavScreen.routeName: (context) => FavScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen()
};
