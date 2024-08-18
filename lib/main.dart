import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes.dart'; // Import the routes file

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.home, // Set initial route
      getPages: Routes.pages,    // Use the routes from Routes class
    );
  }
}
