import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photography_app/tela_principal.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Photography Birthday',
      home: TelaPrincipal(),
    );
  }
}
