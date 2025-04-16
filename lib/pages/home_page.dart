import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0, top: 0, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 350,
              ),
              const Text(
                'StopNow es la app diseñada para ayudarte a dejar de fumar de manera fácil, rápida y efectiva.',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/features');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0A74DA),
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Descubre cómo funciona'),
              ),
              const SizedBox(height: 50),
              _buildFeaturesSection(context),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFeaturesSection(BuildContext context) {

    final bool isMobile = MediaQuery.of(context).size.width < 600;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Beneficios principales',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        isMobile ? SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              _featureCard(
                icon: Icons.timer,
                title: 'Deja de fumar más rápido',
                description:
                    'Reduce tus ganas de fumar con ayuda de nuestra app, diseñada para acelerar el proceso.',
              ),
              _featureCard(
                icon: Icons.health_and_safety,
                title: 'Mejora tu salud',
                description:
                    'Recibe alertas y estadísticas de cómo tu salud mejora cada día que no fumes.',
              ),
              _featureCard(
                icon: Icons.assessment,
                title: 'Monitorea tu progreso',
                description:
                    'Sigue tu progreso y recibe motivación diaria para mantenerte alejado del cigarro.',
              ),
            ],
          ),
        ) :
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _featureCard(
              icon: Icons.timer,
              title: 'Deja de fumar más rápido',
              description:
                  'Reduce tus ganas de fumar con ayuda de nuestra app, diseñada para acelerar el proceso.',
            ),
            _featureCard(
              icon: Icons.health_and_safety,
              title: 'Mejora tu salud',
              description:
                  'Recibe alertas y estadísticas de cómo tu salud mejora cada día que no fumes.',
            ),
            _featureCard(
              icon: Icons.assessment,
              title: 'Monitorea tu progreso',
              description:
                  'Sigue tu progreso y recibe motivación diaria para mantenerte alejado del cigarro.',
            ),
          ],
        ),
      ],
    );
  }

  Widget _featureCard({required IconData icon, required String title, required String description}) {
    return Card(
      elevation: 5,
      child: SizedBox(
        width: 180,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(icon, size: 50, color: const Color(0xFF0A74DA)),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(description, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 0, 33, 64), width: 2),
      color: const Color(0xFF0A74DA),
      borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: const Text(
        '© 2025 StopNow | Todos los derechos reservados',
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
