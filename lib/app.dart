import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:safe_safai_shop/bindings/general_bindings.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/theme/theme.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowMaterialGrid: false,
      themeMode: ThemeMode.system,
      theme: SafeSafaiAppTheme.lightTheme,
      darkTheme: SafeSafaiAppTheme.darkTehme,
      initialBinding: GeneralBindings(),
      /// Show Loader or Circular Progress Indicator meanwhile Authentication Repository is dedicated to show relavent screen.
      home: const Scaffold(backgroundColor: SafeSafaiColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white,),),),
    );
  }
}