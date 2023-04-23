import 'package:flutter/material.dart';
import 'package:named_route/res/route/named_route.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(
                      context, PageNames.profile,
                      arguments: _textEditingController.text),
                  /*Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const Second(),
                      ),
                    ),*/
                  child: const Text('Next'),
                ),
                TextField(
                  controller: _textEditingController,
                  decoration:
                      const InputDecoration(hintText: 'Enter Your Name'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
