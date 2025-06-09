import 'package:flutter/material.dart';
import 'dart:html' as html;

void main() {
  runApp(const StopNowWebApp());
}

class StopNowWebApp extends StatelessWidget {
  const StopNowWebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StopNow',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF153866),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF153866),
          primary: const Color(0xFF153866),
          secondary: const Color(0xFF608AAE),
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',
      ),
      home: const DownloadPage(),
    );
  }
}

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Cambia estos enlaces por los reales de tu app
    const apkUrl =
        'https://drive.google.com/file/d/1dMxpoRLiARQxqzbw3UBVg_sMs1mHCMf6/view?usp=sharing';

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Card(
            elevation: 8,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // LOGO
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'StopNow',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '¡Descarga la app y deja de fumar!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  const SizedBox(height: 32),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.download),
                    label: const Text('Descargar APK'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF153866),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(220, 48),
                    ),
                    onPressed: () {
                      _launchUrl(apkUrl);
                    },
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Daniel Cortés Sánchez - 2025',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _launchUrl(String url) {
    // ignore: undefined_prefixed_name
    // Solo funciona en web
    // ignore: avoid_web_libraries_in_flutter

    html.window.open(url, '_blank');
  }
}
