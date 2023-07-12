import 'package:estados/texto_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TextoNotifier>(
      builder: (context, notifier, widget) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(notifier.textos[notifier.textoActualIndex]),
              ElevatedButton(
                  onPressed: notifier.changeText,
                  child: const Text("Cambiar Texto"))
            ],
          ),
        ),
      ),
    );
  }
}
