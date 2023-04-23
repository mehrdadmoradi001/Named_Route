import 'package:flutter/material.dart';

class NavigateSystemWidget extends StatelessWidget {
  void Function() nextOnTap;
  void Function() backOnTap;

  NavigateSystemWidget({
    Key? key,
    required this.backOnTap,
    required this.nextOnTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: nextOnTap,
          child: const Text('Next'),
        ),
        ElevatedButton(
          onPressed: backOnTap,
          child: const Text('back'),
        ),
      ],
    );
  }
}
