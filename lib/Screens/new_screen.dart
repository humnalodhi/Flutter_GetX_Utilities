import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewScreen extends StatefulWidget {
  final String name;
  const NewScreen({super.key, this.name = ''});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to the ${widget.name}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text('message'.tr),
            subtitle: Text('name'.tr),
          ),
          const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('en', 'US'));
              }, child: const Text('English')),
              const SizedBox(
                width: 10,
              ),
              OutlinedButton(onPressed: (){
                Get.updateLocale(const Locale('ur', 'PK'));
              }, child: const Text('Urdu')),

            ],
          ),
          Center(child: TextButton(onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => NextScreen()));
            //Get.to(NextScreen());
            Get.toNamed('/nextScreen', arguments: [
              'Next Screen',
              'Home Screen',
              'New Screen'
            ]);
          }, child: const Text('Go to the next screen'))),
        ],
      ),
    );
  }
}
