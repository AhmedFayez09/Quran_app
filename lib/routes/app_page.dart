import 'package:flutter/material.dart';

import '../view/screen/hadeth_details.dart';
import '../view/screen/items/hadeth_name_item.dart';


class AppRoutes{
  static const quarandetails = "/quarandetails";
  static const hadehdetails = "/hadehdetails";
}





Map<String, Widget Function(BuildContext)> routes = {
  AppRoutes.hadehdetails : (_) =>const  HadethDetails(),
  // AppRoute.onBoarding: (p0) => const OnBoarding(),
  // AppRoute.login: (p0) => const Login(),
  // AppRoute.signUp: (p0) => const SignUp(),
};
