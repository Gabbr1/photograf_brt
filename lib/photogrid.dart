import 'dart:ui';

import 'package:flutter/material.dart';

import 'text_list.dart';

// Classe PhotoGrid é um Stateless Widget.

/// PhotoGrid é um widget statico (STATELESS WIDGET) que tem como funcionalidade
/// servir como uma grade de fotos de 2x3 com 2 linhas e 3 colunas.
class PhotoGrid extends StatelessWidget {
  // super significa que este elemento/variável/objeto é herdado (veio) da classe mãe
  // que nesse caso é o StatelessWidget.
  const PhotoGrid({
    super.key,
    required this.startIn,
    this.gridSize = 6,
  });

  // Variáveis
  final int startIn;
  final int gridSize;

  // Métodos
  double _scalableHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  double _scalableWidth(BuildContext context) {
    return MediaQuery.of(context).size.width == MediaQuery.of(context).size.width / 2
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width * .65;
  }

  // o método construir (build) é o método que tem por função construir o componente
  // criado na tela do usuário, por este motivo, este método é obrigatorio, tendo que
  // existir em qualquer Widget que você for criar sendo ele estático ou não.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _scalableHeight(context),
      width: _scalableWidth(context),
      child: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          padding: const EdgeInsets.all(16),
          children: List.generate(
            gridSize,
            (index) => GestureDetector(
              onTap: () {
                showGeneralDialog(
                  barrierDismissible: true,
                  barrierLabel: '',
                  barrierColor: Colors.black38,
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (ctx, anim1, anim2) => AlertDialog(
                    elevation: 2,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 500,
                          width: 500,
                          child: Image.asset(
                            'img${index + startIn}.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(height: 16),
                        SizedBox(
                          width: 500,
                          child: Text(
                            textos[index + startIn],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4 * anim1.value, sigmaY: 4 * anim1.value),
                    child: FadeTransition(
                      opacity: anim1,
                      child: child,
                    ),
                  ),
                  context: context,
                );
              },
              child: Image.asset(
                'img${index + startIn}.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}