import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs; //obs property makes the counter observable

  void increment() {
    counter++;
  }
}
