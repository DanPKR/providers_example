import 'package:flutter/material.dart';

class TextoNotifier extends ChangeNotifier {
  final List<String> textos = List.from([
    "Primer Texto",
    "Segundo Texto",
    "Tercer Texto",
    "Cuarto Texto",
    "Quinto Texto"
  ]);

  int textoActualIndex = 0;

  changeText() {
    textoActualIndex >= textos.length - 1
        ? textoActualIndex = 0
        : textoActualIndex++;
    print(textoActualIndex);
    notifyListeners();
  }
}
