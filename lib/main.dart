import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:safe_safai_shop/app.dart';
import 'package:safe_safai_shop/data/repositories/authentication/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  /// Widget Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  /// -- GetX Local Storage
  await GetStorage.init();
  // Todos: Init Payment Methods
  /// -- Await Native Splace until items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  /// -- Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((FirebaseApp Value) => Get.put(AuthenticationRepository())
  );
  // Todos: Initialize Authentication

  runApp(const App());
}

// class App extends StatelessWidget {
//   const App({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       themeMode: ThemeMode.system,
//       theme: SafeSafaiAppTheme.lightTheme,
//       darkTheme: SafeSafaiAppTheme.darkTehme,
//       home: const OnBoardingScreen(),
//       // home: const ForgetPassword(),
//     );
//   }
// }
