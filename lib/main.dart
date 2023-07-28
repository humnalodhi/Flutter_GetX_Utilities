import 'package:flutter/material.dart';
import 'package:flutter_getx_utilities/Screens/languages.dart';
import 'package:flutter_getx_utilities/Screens/new_screen.dart';
import 'package:flutter_getx_utilities/Screens/next_screen.dart';
import 'package:get/get.dart';
import 'Screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Utilities',
      theme: ThemeData(
          primarySwatch: Colors.indigo
        ),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('ur', 'PK'),
      translations: Languages(),
      home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/newScreen', page: () => const NewScreen()),
        GetPage(name: '/nextScreen', page: () => NextScreen()),
      ],
    );
  }
}

