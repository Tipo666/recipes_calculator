import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final controlador = TextEditingController();

    String ingredientes;
    double costo = 0.0, tiempo_min = 0.0, sueldo_min = 0.0, empaque = 0.0;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.settings)
          ],
          title: Text("Recipes App"),
        ),
        body: Column(
               children: [
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
                 buildRow(),
               ],

        ),
      ),
    );
  }

  Row buildRow() {
    return const Row(
            children: <Widget>[
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Cantidad'),
              )),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nombre Producto'),
              )),
              Expanded(
                  child: TextField(
                    readOnly: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Costo'),
              )),
              Expanded(
                  child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Total'),
              )),
            ],
          );
  }
}
