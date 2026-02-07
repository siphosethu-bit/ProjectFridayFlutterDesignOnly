import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(390, 844),
    minimumSize: Size(390, 844),
    maximumSize: Size(390, 844),
    center: true,
    backgroundColor: Colors.black, // 👈 ADD THIS
    title: 'Friday',
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const FridayApp());
}

class FridayApp extends StatelessWidget {
  const FridayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          background: Colors.black,
          surface: Colors.black,
          primary: Colors.white,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
