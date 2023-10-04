import 'package:flutter/material.dart';
import 'package:triki/interface/play/play.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      title: 'Material App',
      home: const Jueguito(), // Usa Jueguito como pantalla principal
    );
  }
}
