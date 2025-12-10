import 'package:filasapp/core/theme/app_theme.dart';
import 'package:filasapp/presentation/pages/filas_page.dart';
import 'package:filasapp/presentation/pages/home_page.dart';
import 'package:filasapp/presentation/pages/organization_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      initialRoute: "/",
      routes: {
        "/": (context) {
          return const HomePage();
        },
        "/filas": (context) {
          return const FilasPage();
        },
        "/organization": (context) {
          return const OrganizationPage();
        },
      },
    );
  }
}
