import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatefulWidget {
  dynamic name;
  NextScreen({super.key, this.name});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the '+Get.arguments[0]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: TextButton(onPressed: (){
            //Navigator.pop(context);
            Get.back();
            Get.back();
          }, child: const Text('Go back to the home screen'))),
        ],
      ),
    );
  }
}
