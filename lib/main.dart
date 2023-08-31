import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mahabharat/screen/splesh_screen/splash_screen.dart';
import 'package:mahabharat/services/pref_ser/pref_ser.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefService.init();
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ),
  );
}
