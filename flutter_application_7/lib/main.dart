import 'package:flutter/material.dart';
import 'package:flutter_application_7/screens/intro_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bag store',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:  home()
    );
  }
}
