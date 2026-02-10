import 'package:flutter/material.dart';

import 'features/home/home_page.dart';
import 'theme/app_theme.dart';

class ChessDuApp extends StatelessWidget {
  const ChessDuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChessDu',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark(),
      home: const HomePage(),
    );
  }
}
