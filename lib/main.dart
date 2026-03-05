import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';
import 'injection.dart';

void main() {
  runApp(buildApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalog App',
      routes: AppRouter.routes,
      initialRoute: AppRouter.catalog,
    );
  }
}