import 'package:flutter/material.dart';
import 'package:named_route/res/route/named_route.dart';
import 'package:named_route/widgets/navigate_system_widget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key,required this.name}) : super(key: key);
  final Object? name;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.lightGreenAccent,
        child: Center(
          child: SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(children: [
              Text(widget.name.toString()),
              const SizedBox(height: 25),
              NavigateSystemWidget(
                backOnTap: () => Navigator.pop(context),
                nextOnTap: () => Navigator.pushNamed(context, PageNames.basket),
              ),
            ],),
          ),
        ),
      ),
    );
  }
}