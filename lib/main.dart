import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:safe_safai_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:safe_safai_shop/utils/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SafeSafaiAppTheme.lightTheme,
      darkTheme: SafeSafaiAppTheme.darkTehme,
      home: const OnBoardingScreen(),
      // home: const ForgetPassword(),
    );
  }
}