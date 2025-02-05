import 'package:flutter/material.dart';
import 'package:hackaton/core/themes/custom_theme.dart';
import 'package:hackaton/provider/splash_provider.dart';
import 'package:hackaton/provider/theme_provider.dart';
import 'package:hackaton/view/launch.dart';
import 'package:hackaton/view/login.dart';
import 'package:hackaton/view/setfingerprint.dart';
import 'package:hackaton/view/splash.dart';
import 'package:hackaton/view/test.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => Splashprovider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.light(),
      darkTheme: CustomTheme.light(),
      themeMode: themeProvider.themeMode,
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
