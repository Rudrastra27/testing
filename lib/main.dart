import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/authenticationScreen/login_screen.dart';
import 'package:tinder_clone/authenticationScreen/registration_screen.dart';
import 'package:tinder_clone/colors.dart';
import 'package:tinder_clone/controllers/authentication_controller.dart';
import 'colors.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthenticationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tinder Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home:const LoginScreen(),
    );
  }
}
