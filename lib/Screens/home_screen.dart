import 'package:flutter/material.dart';
import 'package:flutter_getx_utilities/Screens/new_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height *1;
    final width = MediaQuery.of(context).size.width *1;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Utilities'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text('GetX Dialog Alert'),
              subtitle: const Text('Dialog alert with GetX'),
              onTap: () {
                Get.defaultDialog(
                    title: 'Delete Chat',
                    onConfirm: () {
                      Get.back();
                    },
                    confirmTextColor: Colors.white,
                    titlePadding: const EdgeInsets.only(top: 20),
                    contentPadding: const EdgeInsets.all(20),
                    middleText: 'Are you sure you want to delete this chat?',
                    textConfirm: 'Yes',
                    textCancel: 'No');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Bottom Sheet'),
              subtitle: const Text('Bottom sheet with GetX'),
              onTap: () {
                Get.bottomSheet(
                    Container(
                  decoration: const BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)
                      )),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text(
                          'Light Theme',
                          style: TextStyle(color: Colors.white),
                        ),
                        leading:
                            const Icon(Icons.light_mode, color: Colors.white),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        title: const Text('Dark Theme',
                            style: TextStyle(color: Colors.white)),
                        leading:
                            const Icon(Icons.dark_mode, color: Colors.white),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            //height: 120, // Static height
            //width: 250, // Static width
            //height: height *0.2, // Dynamic height using media query.
            //width: width *0.8, // Dynamic height using media query.
            height: Get.height *0.2, // Dynamic height using GetX.
            width: Get.width *0.8, // Dynamic height using GetX.
            decoration: BoxDecoration(
                color: Colors.orange,
              borderRadius: BorderRadius.circular(10)
            ),
            child: const Center(
              child: Text('Container', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          ),
          Expanded(
            child: Center(
                child: TextButton(
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => const NewScreen()));
                      Get.to(const NewScreen(
                        name: 'New Screen',
                      ));
                    },
                    child: const Text('Go to the new screen'))),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Humna Lodhi',
            "I build flutter ui with getx utilities.",
            snackPosition: SnackPosition.TOP,
            icon: const Icon(
              Icons.inbox,
              color: Colors.white,
            ),
            backgroundColor: Colors.black12,
            colorText: Colors.white,
            onTap: (snap) {
              print('Tapping');
            },
            mainButton: TextButton(
                onPressed: () {
                  print('Clicking');
                },
                child: const Text(
                  'Click',
                  style: TextStyle(color: Colors.white),
                )),
          );
        },
        child: const Icon(Icons.ads_click_outlined),
      ),
    );
  }
}
