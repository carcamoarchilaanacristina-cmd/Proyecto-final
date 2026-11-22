import 'package:flutter/material.dart';
import 'theme/app_theme.dart';

void main() => runApp(const NutriPlatoApp());

class NutriPlatoApp extends StatelessWidget {
  const NutriPlatoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NutriPlato',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.claro,
      darkTheme: AppTheme.oscuro,
      home: const Principal(),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int _indice = 0;

  static const _titulos = ['Hoy', 'Historial', 'Estadísticas'];

  final _paginas = const [
    Center(child: Text('Resumen del día')),
    Center(child: Text('Historial de comidas')),
    Center(child: Text('Estadísticas')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titulos[_indice])),
      body: _paginas[_indice],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _indice,
        onDestinationSelected: (i) => setState(() => _indice = i),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.today), label: 'Hoy'),
          NavigationDestination(icon: Icon(Icons.restaurant), label: 'Historial'),
          NavigationDestination(icon: Icon(Icons.bar_chart), label: 'Estadísticas'),
        ],
      ),
    );
  }
}