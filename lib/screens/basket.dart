import 'package:flutter/material.dart';
import 'package:named_route/res/route/named_route.dart';
import 'package:named_route/screens/profile.dart';
import 'package:named_route/widgets/navigate_system_widget.dart';

class Basket extends StatefulWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.green,
        child: Center(
          child: SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            child: NavigateSystemWidget(
              backOnTap: () => Navigator.pop(context),
              nextOnTap: () =>
                  Navigator.pushNamedAndRemoveUntil(context, PageNames.root, (route) => false),
            ),
          ),
        ),
      ),
    );
  }
}
