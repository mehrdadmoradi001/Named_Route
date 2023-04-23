import 'package:flutter/material.dart';
import 'package:named_route/res/route/named_route.dart';
import 'package:named_route/res/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      initialRoute: PageNames.root,
      routes: routes,
    );
  }
}

