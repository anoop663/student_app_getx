import 'package:flutter/material.dart';
import 'package:flutter_application_provider/getx_controller.dart';
import 'package:get/get.dart';


// ignore: must_be_immutable
class NavigationPage2 extends StatelessWidget {
  NavigationPage2({super.key});
  CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green, // Set the background color here
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('title2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'This is a Test navigation page 2',
            ),
            FloatingActionButton(
              onPressed: () {
                Get.toNamed('/navigation');
                
              },
              tooltip: 'Second Button',
              child: const Icon(Icons.pages),
            ),
          ],
        ),
      ),
    );
  }
}
