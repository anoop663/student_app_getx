import 'package:flutter/material.dart';
import 'package:flutter_application_provider/getx_controller.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    // Initialize the CounterController
    final CounterController counterController = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            //Obx widget listens for changes to the counter and rebuilds the Text widget when the value changes.
            Obx(
              () => Text(
                '${counterController.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Positioned(
            left: 50,
            bottom: 16,
            child: FloatingActionButton(
              onPressed: () {
                //counterController.navigateToNavigationPage();
                Get.toNamed('/navigation2');
                
              },
              tooltip: 'Second Button',
              child: const Icon(Icons.pages),
            ),
          ),
          Positioned(
            right: 16,
            bottom: 16,
            child: FloatingActionButton(
              onPressed: () {
                counterController.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
