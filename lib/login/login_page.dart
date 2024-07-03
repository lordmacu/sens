import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/services/auth_service.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = Get.find<AuthService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            Obx(() {
              if (authService.isLoggedIn.value) {
                return CircularProgressIndicator();
              } else {
                return ElevatedButton(
                  onPressed: () async {
                    try {
                      await authService.login(
                          usernameController.text, passwordController.text);
                    } catch (e) {
                      Get.snackbar('Error', 'Failed to login');
                    }
                  },
                  child: Text('Login'),
                );
              }
            }),
          ],
        ),
      ),
    );
  }
}
