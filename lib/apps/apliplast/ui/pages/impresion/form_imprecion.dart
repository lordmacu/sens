import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:sens/apps/apliplast/views/extrusion_peport/whidget/button_general.dart'
as widgets;
import 'package:sens/apps/apliplast/views/extrusion_peport/whidget/input_text_general.dart'
as widgets;




class FormExtruccion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 25, 38, 83),
        title: Text('Formulario de Impresion',
            style: TextStyle(color: Colors.white, fontSize: 17)),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.back(); // Utilizando Get para navegar hacia atrás
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Opción 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Opción 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),

            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                width: 360,
                decoration: BoxDecoration(
                  color: Color.fromARGB(22, 79, 92, 150),
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   SizedBox(height: 8),

                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'N'),
                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Rollo N°'),
                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Fecha'),
                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Turno'),
                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Operador'),
                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Maquina'),
                    SizedBox(height: 8),

                    widgets.inputTextGeneral(text: 'Modelo'),

                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Espesor'),SizedBox(height: 8),
                    SizedBox(height: 8),

                    widgets.inputTextGeneral(text: 'Color'),

                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Peso Neto'),

                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'P.Bruto'),
                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Dencidad'),
                    SizedBox(height: 8),
                    widgets.inputTextGeneral(text: 'Cliente'),





                    SizedBox(height: 20),
                    SizedBox(
                        width: 500, // Puedes ajustar este valor al ancho deseado
                      child: widgets.ButtonGeneral(
                        text: 'Guardar',
                        colorValue: Color.fromARGB(255, 14, 12, 87),
                        fontSize: 10,

                      ),
                    ),
                    SizedBox(height: 8),


                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}

class labelAndInput extends StatelessWidget {
  final String label;
  final String placeholder;
  const labelAndInput({
    Key? key,
    required this.label,
    required this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          child: Text(
            label,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 11, 19, 68)),
          ),
        ),
        Expanded(
          child: widgets.inputTextGeneral(text: placeholder),
        ),
      ],
    );
  }
}

