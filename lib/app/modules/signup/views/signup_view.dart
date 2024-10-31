import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';

import '../controllers/signup_controller.dart';

// Suggested code may be subject to a license. Learn more: ~LicenseLog:1832883682.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4122136343.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3419894950.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1847811744.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3508663017.
class SignupView extends GetView<SignupController> {
  final cAuth = Get.find<AuthController>();

  SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SignUp',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://static-00.iconduck.com/assets.00/android-plain-wordmark-icon-256x256-ppoejbtc.png",
              height: 100,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller.cEmail,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controller.cPass,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Password'),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                cAuth.signup(controller.cEmail.text, controller.cPass.text);
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 33, 98, 226),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}