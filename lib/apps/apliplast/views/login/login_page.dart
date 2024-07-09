// main_login.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sens/core/components/buttons/button.dart';
import 'package:sens/core/components/icons/logo.dart';
import 'package:sens/core/components/inputs/input_icon.dart';
import 'package:sens/apps/apliplast/controllers/login_controller.dart';
import 'package:sens/core/components/inputs/input_text.dart';

class MainLogin extends StatelessWidget {
  const MainLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Text(
              'Bienvenido',
              style: TextStyle(
                color: Color.fromARGB(255, 25, 38, 83),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Logueate en tu cuenta',
              style: TextStyle(
                color: Color.fromARGB(255, 25, 38, 83),
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            InputGeneral(icon: Icons.email, text: 'Correo electrónico'), // Asegúrate de pasar los parámetros correctos
            const SizedBox(height: 19),
            InputGeneral(icon: Icons.lock, text: 'Contraseña'), // Asegúrate de pasar los parámetros correctos
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Color.fromARGB(255, 25, 38, 83),
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 25, 38, 83),
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '¿Necesitas ayuda?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 25, 38, 83),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // Botón ingresar
            ButtonGeneral(
              text: 'Ingresar',
              colorValue: Color.fromARGB(255, 25, 38, 83),
              fontSize: 14,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
