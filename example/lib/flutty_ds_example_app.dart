import 'package:flutter/material.dart';
import 'package:flutty_ds/flutty_ds.dart';

import 'pages/home_page.dart';

class FluttyDsExampleApp extends StatelessWidget {
  const FluttyDsExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluttyThemeWrapper(
      theme: FluttyMaterialTheme.defaultTheme,
      mode: ThemeMode.system,
      materialAppBuilder: (theme, mode) {
        return MaterialApp(
          title: 'Flutty DS Example',
          debugShowCheckedModeBanner: false,
          themeMode: mode,
          theme: theme.light() ?? ThemeData.light(),
          darkTheme: theme.dark() ?? ThemeData.dark(),
          home: const HomePage(),
        );
      },
    );
  }
}
