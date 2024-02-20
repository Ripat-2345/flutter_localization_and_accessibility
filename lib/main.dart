import 'package:flutter/material.dart';
import 'package:flutter_localization_and_accessibility/common.dart';
import 'package:flutter_localization_and_accessibility/home.dart';
import 'package:flutter_localization_and_accessibility/localizations_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LocalizationProvider>(
      create: (context) => LocalizationProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocalizationProvider>(context);
        return MaterialApp(
          showSemanticsDebugger: true,
          locale: provider.locale,
          title: 'Flutter Localization & Accessibility',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
            ),
            scaffoldBackgroundColor: Colors.grey.shade50,
            outlinedButtonTheme: OutlinedButtonThemeData(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade800,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          // localizationsDelegates: const [
          //   AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: const [
          //   Locale('id', ''),
          //   Locale('en', ''),
          // ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: const HomePage(),
        );
      },
    );
  }
}
