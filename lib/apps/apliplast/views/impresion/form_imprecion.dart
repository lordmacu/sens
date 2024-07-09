import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sens/core/components/buttons/button.dart' as widgets;

class FormExtrusion extends StatelessWidget {
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
                    LabelAndInput(
                      label: 'N',
                      placeholder: 'Ingrese el valor de N',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Rollo N°',
                      placeholder: 'Ingrese el número de rollo',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Fecha',
                      placeholder: 'Ingrese la fecha',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Turno',
                      placeholder: 'Ingrese el turno',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Operador',
                      placeholder: 'Ingrese el nombre del operador',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Maquina',
                      placeholder: 'Ingrese el nombre de la máquina',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Modelo',
                      placeholder: 'Ingrese el modelo',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Espesor',
                      placeholder: 'Ingrese el espesor',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Color',
                      placeholder: 'Ingrese el color',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Peso Neto',
                      placeholder: 'Ingrese el peso neto',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'P.Bruto',
                      placeholder: 'Ingrese el peso bruto',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Densidad',
                      placeholder: 'Ingrese la densidad',
                    ),
                    SizedBox(height: 8),
                    LabelAndInput(
                      label: 'Cliente',
                      placeholder: 'Ingrese el cliente',
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 500, // Ajusta este valor según sea necesario
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

class LabelAndInput extends StatelessWidget {
  final String label;
  final String placeholder;

  const LabelAndInput({
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
              color: Color.fromARGB(255, 11, 19, 68),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: placeholder,
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
