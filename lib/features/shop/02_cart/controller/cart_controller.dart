import 'package:get/get.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();

  // var
  RxInt cartItemsNo = 0.obs;
  RxDouble totalCartPrice = 0.0.obs;
  RxInt productQuantityInCart = 0.obs;
}
