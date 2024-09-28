import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/Widgets/custom_textField_widget.dart';
import 'package:tinder_clone/authenticationScreen/registration_screen.dart';
import 'package:tinder_clone/colors.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailTextEditingController=TextEditingController();
  TextEditingController passwordTextEditingController=TextEditingController();
  bool showProgressBar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
        body: Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Image(image: AssetImage("assets/images/clone.png"), height: 100, width: 100,),
            const SizedBox(height: 15),
            const Text("Welcome to Fake Tinder",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            const Text("Please Login to Find your Fake Match",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            const SizedBox(height: 5),
            const Text("- Developed By Girish Teja",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.red),),
            const SizedBox(height: 40),
            // Email
            SizedBox(
              width: MediaQuery.of(context).size.width-40,
              height: 55,
              child: CustomTextFieldWidget(
                editingController: emailTextEditingController,
                labelText: "Email",
                iconData: Icons.email_outlined,
                isObscure: false,
              ),
            ),
            const SizedBox(height: 30),
            // Password
            SizedBox(
              width: MediaQuery.of(context).size.width-40,
              height: 55,
              child: CustomTextFieldWidget(
                editingController: passwordTextEditingController,
                labelText: "Password",
                iconData: Icons.lock_outline,
                isObscure: true,
              ),
            ),
            const SizedBox(height: 40),
            // Login Button
            Container(
              width: MediaQuery.of(context).size.width-290,
              height: 40,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                )
              ),
              child: InkWell(
                onTap: (){},
                child: const Center(
                  child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Don't have an Account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an Account ?",
                style: TextStyle(color: Colors.amber,fontSize: 16),),
                const SizedBox(width: 10,),
                InkWell(
                  onTap: () {
                    Get.to(const RegistrationScreen());
                  },
                  child: const Text("Click Here",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),
        
        
                )
              ],
            ),
            // ProgressBar
            showProgressBar==true?const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            ):Container(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    ));
  }
}
