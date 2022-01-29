import 'package:flutter/material.dart';

void main() {
  runApp(RCB_APP());
}

class RCB_APP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FILAS Y COLUMNAS',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Principal(title: "Pantalla principal"));
  }
}

class Principal extends StatefulWidget {
  const Principal({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text("Valor 1"),
            Text("Valor 2"),
            Text("Valor 3"),
            Text("Valor 4"),
          ],
        ));
  }
}
