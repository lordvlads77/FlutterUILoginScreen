import 'package:flutter/material.dart';

class Registrado extends StatefulWidget {
  const Registrado({Key? key}) : super(key: key);

  @override
  State<Registrado> createState() => _RegistradoState();
}

class _RegistradoState extends State<Registrado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
      ),
      body: Center(
        child: Text('Registrado con Exito'),
      ),
    );
  }
}