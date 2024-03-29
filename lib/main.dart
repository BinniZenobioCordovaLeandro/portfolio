import 'package:bin_protfolio/localization/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:bin_protfolio/src/pages/home_screen.dart';
import 'package:bin_protfolio/src/themes/dark_theme.dart';
import 'package:bin_protfolio/src/themes/light_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    DevicePreview(
      key: const Key('PortfolioDevicePreview'),
      enabled: true,
      backgroundColor: Colors.black,
      availableLocales: const [
        Locale.fromSubtags(languageCode: 'en'),
        Locale.fromSubtags(languageCode: 'es'),
      ],
      defaultDevice: Devices.ios.iPad,
      data: DevicePreviewData(
        orientation: Orientation.landscape,
        isEnabled: true,
        deviceIdentifier: Devices.ios.iPad.identifier.name,
      ),
      isToolbarVisible: true,
      storage: DevicePreviewStorage.preferences(),
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
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
        Locale('it'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
