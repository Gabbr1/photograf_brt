import 'package:flutter/cupertino.dart';
import 'package:photography_app/tela_principal.dart';

void main() {
  runApp(const Aplicativo());
}

class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Photography Birthday',
      home: TelaPrincipal(),
    );
  }
}
