import 'package:flutter/material.dart';

class FeaturesPage extends StatelessWidget {
  const FeaturesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Características de StopNow'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text(
              'Inicio',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/testimonials');
            },
            child: const Text(
              'Testimonios',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
            child: const Text(
              'Contacto',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            Text(
              'Características principales de StopNow:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            FeatureDetail(
              icon: Icons.timer,
              title: 'Plan de desintoxicación gradual',
              description: 'Te ayudamos a reducir el consumo de cigarrillos progresivamente.',
            ),
            FeatureDetail(
              icon: Icons.notifications,
              title: 'Notificaciones personalizadas',
              description: 'Recibe alertas que te motivarán a no caer en la tentación.',
            ),
            FeatureDetail(
              icon: Icons.graphic_eq,
              title: 'Estadísticas de progreso',
              description: 'Monitorea tu avance y celebra cada victoria en tu camino hacia la libertad.',
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const FeatureDetail({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 5,
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF0A74DA), size: 40),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
