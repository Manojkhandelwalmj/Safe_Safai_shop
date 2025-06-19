import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/theme/theme.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: SafeSafaiAppTheme.lightTheme,
      darkTheme: SafeSafaiAppTheme.darkTehme,
    );
  }
}