import 'package:device_preview/device_preview.dart';
import 'package:employee_parking/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/locale_controller.dart';
import 'helper/binding.dart';
import 'model/locale_model.dart';

SharedPreferences? sharedpref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref = await SharedPreferences.getInstance();
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controllerlang = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      locale: controllerlang.initlang,
      translations: LocaleModel(),
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
