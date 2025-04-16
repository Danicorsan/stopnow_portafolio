import 'package:flutter/material.dart';
import 'package:stopnow_portafolio/pages/contact_page.dart';
import 'package:stopnow_portafolio/pages/feature_page.dart';
import 'package:stopnow_portafolio/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StopNow - Deja de fumar',
      theme: ThemeData(
        primaryColor: const Color(0xFF0A74DA), // Azul principal
        hintColor: const Color(0xFF3B8D99), // Azul secundario
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A74DA),
          elevation: 0,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/features': (context) => const FeaturesPage(),
        '/contact': (context) => const ContactPage(),
      },
    );
  }
}
