import 'package:estados/home_page.dart';
import 'package:estados/texto_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<TextoNotifier>(create: (_) => TextoNotifier())
    ], child: MaterialApp(home: HomePage()));
  }
}
