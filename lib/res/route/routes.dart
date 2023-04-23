import 'package:flutter/material.dart';
import 'package:named_route/res/route/named_route.dart';
import 'package:named_route/screens/Basket.dart';
import 'package:named_route/screens/home.dart';
import 'package:named_route/screens/profile.dart';

Map<String, Widget Function(BuildContext)> routes = {
  PageNames.root : (context) => const Home(),
  PageNames.basket : (context) => const Basket(),
  PageNames.profile : (context) =>  Profile(name: ModalRoute.of(context)!.settings.arguments),
};