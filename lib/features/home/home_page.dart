import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isTablet = constraints.maxWidth >= 700;
            final spacing = isTablet ? 24.0 : 16.0;

            return SingleChildScrollView(
              padding: EdgeInsets.all(spacing),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1000),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'ChessDu',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                      SizedBox(height: spacing),
                      Card(
                        child: Padding(
                          padding: EdgeInsets.all(spacing),
                          child: Column(
                            children: [
                              AspectRatio(
                                aspectRatio: 1,
                                child: SvgPicture.asset(
                                  'assets/logo/chessdu_logo_concept.svg',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'Entrena táctica, estrategia y enfoque mental.',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: spacing),
                      _ModuleGrid(isTablet: isTablet),
                      SizedBox(height: spacing),
                      FilledButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.play_arrow_rounded),
                        label: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 14),
                          child: Text('Comenzar entrenamiento'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class _ModuleGrid extends StatelessWidget {
  const _ModuleGrid({required this.isTablet});

  final bool isTablet;

  @override
  Widget build(BuildContext context) {
    final modules = <({IconData icon, String title, String subtitle})>[
      (
        icon: Icons.extension_rounded,
        title: 'Tácticas',
        subtitle: 'Resuelve ejercicios por tema y dificultad',
      ),
      (
        icon: Icons.timer_outlined,
        title: 'Sesiones',
        subtitle: 'Pomodoro y bloques personalizados',
      ),
      (
        icon: Icons.bar_chart_rounded,
        title: 'Progreso',
        subtitle: 'Aciertos, tiempo y racha diaria',
      ),
      (
        icon: Icons.school_outlined,
        title: 'Entrenador',
        subtitle: 'Seguimiento para alumnos (fase 2)',
      ),
    ];

    return GridView.builder(
      itemCount: modules.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isTablet ? 2 : 1,
        childAspectRatio: isTablet ? 2.5 : 2.8,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        final item = modules[index];

        return Card(
          child: ListTile(
            leading: Icon(item.icon, size: 28),
            title: Text(item.title, style: const TextStyle(fontWeight: FontWeight.w700)),
            subtitle: Text(item.subtitle),
          ),
        );
      },
    );
  }
}
