import 'package:bin_protfolio/src/pages/home_screen.dart';
import 'package:bin_protfolio/src/themes/dark_theme.dart';
import 'package:bin_protfolio/src/themes/light_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      backgroundColor: Colors.black,
      availableLocales: const [
        Locale.fromSubtags(languageCode: 'en'),
      ],
      defaultDevice: Devices.ios.iPad,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Binni Cordova',
      themeMode: ThemeMode.system,
      theme: LightTheme().get(),
      darkTheme: DarkTheme().get(),
      home: const HomeScreen(),
    );
  }
}
