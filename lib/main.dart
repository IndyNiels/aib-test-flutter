import 'package:flutter/material.dart';
import 'package:aib_test/core/di/service_locator.dart';
import 'package:aib_test/core/routing/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocatorSetUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AIB Test',
      routeInformationParser: goRouter.routeInformationParser,
      routerDelegate: goRouter.routerDelegate,
      routeInformationProvider: goRouter.routeInformationProvider,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
