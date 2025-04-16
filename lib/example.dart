import 'package:flutter/material.dart';
import 'package:stopnow_portafolio/pages/contact_page.dart';
import 'package:stopnow_portafolio/pages/feature_page.dart';
import 'package:stopnow_portafolio/pages/home_page.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;
  bool _isLoading = false;
  Widget? _currentScreen;

   final List<Widget> _screens = [
    const HomePage(),
    const FeaturesPage(),
    const ContactPage(),
  ];

  final List<String> _screenTitles = ['StopNow', 'StopNow', 'StopNow'];

  @override
  void initState() {
    super.initState();
    _currentScreen = _screens[_currentIndex];
  }

  Future<void> _changeScreen(int index) async {
    if (_currentIndex == index) return;

    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(milliseconds: 300)); // simula carga

    setState(() {
      _currentIndex = index;
      _currentScreen = _screens[index];
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screenTitles[_currentIndex]),
        actions: [
          TextButton(
            style: _currentIndex == 0
                ? TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 255, 255))
                : null,
            onPressed: () => _changeScreen(0),
            child: const Text('Inicio', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            style: _currentIndex == 1
                ? TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 255, 255))
                : null,
            onPressed: () => _changeScreen(1),
            child: const Text('Feature', style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            style: _currentIndex == 2
                ? TextButton.styleFrom(backgroundColor: const Color.fromARGB(255, 255, 255, 255))
                : null,
            onPressed: () => _changeScreen(2),
            child: const Text('Contacto', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : _currentScreen,
      ),
    );
  }
}
