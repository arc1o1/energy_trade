import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController(); // controller for email input
  final lastName = TextEditingController(); // controller for last name input
  final userName = TextEditingController(); // controller for user name input
  final firstName = TextEditingController(); // controller for first name input
  final password = TextEditingController(); // controller for password input
  final phoneNumber = TextEditingController(); // controller for phone number
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>(); // form
}
