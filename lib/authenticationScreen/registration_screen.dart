import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tinder_clone/controllers/authentication_controller.dart';

import '../Widgets/custom_textField_widget.dart';
import '../colors.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool showProgressBar = false;
  var authenticationController = AuthenticationController.authController;

  // Personal Info
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController ageTextEditingController = TextEditingController();
  TextEditingController phoneNoTextEditingController = TextEditingController();
  TextEditingController cityTextEditingController = TextEditingController();
  TextEditingController countryTextEditingController = TextEditingController();
  TextEditingController profileHeadingTextEditingController =
      TextEditingController();
  TextEditingController lookingForInAPartnerTextEditingController =
      TextEditingController();

  // Appearance
  TextEditingController heightTextEditingController = TextEditingController();
  TextEditingController weightTextEditingController = TextEditingController();
  TextEditingController bodyTypeTextEditingController = TextEditingController();

  // Lifestyle
  TextEditingController drinkTextEditingController = TextEditingController();
  TextEditingController smokeTextEditingController = TextEditingController();
  TextEditingController martialStatusTextEditingController =
      TextEditingController();
  TextEditingController haveChildrenTextEditingController =
      TextEditingController();
  TextEditingController noOfChildrenTextEditingController =
      TextEditingController();
  TextEditingController professionTextEditingController =
      TextEditingController();
  TextEditingController employmentStatusTextEditingController =
      TextEditingController();
  TextEditingController livingSituationTextEditingController =
      TextEditingController();
  TextEditingController willingToRelocateTextEditingController =
      TextEditingController();
  TextEditingController relationshipYouAreLookingForTextEditingController =
      TextEditingController();

  // Background - Cultural Values
  TextEditingController nationalityTextEditingController =
      TextEditingController();
  TextEditingController educationTextEditingController =
      TextEditingController();
  TextEditingController languageSpokenTextEditingController =
      TextEditingController();
  TextEditingController religionTextEditingController = TextEditingController();
  TextEditingController ethnicityTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text("Create Account",
                  style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              const Text("To Get Started Now",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                      fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              // Choose Image Circle avatar
              authenticationController.imageFile == null ?
              const CircleAvatar(
                radius: 70,
                backgroundImage:
                AssetImage("assets/images/profile_avatar.png"),
                backgroundColor: Colors.black,
              ):
              Container(
                width: 180,
                height: 180,
                decoration:  BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(image:FileImage(File(authenticationController.imageFile!.path,)))
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: ()async
                  {
                    await authenticationController.pickImageFileFromGallery();
                    setState(() {
                      authenticationController.imageFile;
                    });
                    },
                      icon: const Icon(Icons.image_search)),
                  const SizedBox(width: 15),
                  IconButton(onPressed: ()async
                  {await authenticationController.pickImageFileFromCamera();
                  setState(() {
                    authenticationController.imageFile;
                  });},
                      icon: const Icon(Icons.camera_enhance_outlined))
                ],
              ),
              const SizedBox(height: 30),
              // Personal Info
              const Text(
                "Personal Info",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Email
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: emailTextEditingController,
                  labelText: "Email",
                  iconData: Icons.email_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Password
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: passwordTextEditingController,
                  labelText: "Password",
                  iconData: Icons.lock_outline,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // Name
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: nameTextEditingController,
                  labelText: "Name",
                  iconData: Icons.person_2_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Age
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: ageTextEditingController,
                  labelText: "Age",
                  iconData: Icons.calendar_month,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Phone No
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: phoneNoTextEditingController,
                  labelText: "Phone No",
                  iconData: Icons.phone,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // City
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: cityTextEditingController,
                  labelText: "City",
                  iconData: Icons.location_city,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Country
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: countryTextEditingController,
                  labelText: "Country",
                  iconData: Icons.flag,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Profile Heading
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: profileHeadingTextEditingController,
                  labelText: "Profile Heading",
                  iconData: Icons.app_registration_rounded,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // Looking For In A Partner
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: lookingForInAPartnerTextEditingController,
                  labelText: "What are you Looking For In A Partner",
                  iconData: Icons.face,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 30),
//______________________________________________________________________________
              // Appearance
              const Text(
                "Appearance",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Height
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: heightTextEditingController,
                  labelText: "height",
                  iconData: Icons.straighten,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Weight
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: weightTextEditingController,
                  labelText: "Weight",
                  iconData: Icons.scale,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // Body Type
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: bodyTypeTextEditingController,
                  labelText: "Body Type",
                  iconData: Icons.accessibility,
                  isObscure: false,
                ),
              ),
//______________________________________________________________________________
              // Life Style
              const SizedBox(height: 20),
              const Text(
                "Life Style",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Drink
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: drinkTextEditingController,
                  labelText: "Drink",
                  iconData: Icons.local_drink,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Smoke
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: smokeTextEditingController,
                  labelText: "Smoke",
                  iconData: Icons.smoke_free,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // Marital Status
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: martialStatusTextEditingController,
                  labelText: "Marital Status",
                  iconData: CupertinoIcons.person_2,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // have Children
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: haveChildrenTextEditingController,
                  labelText: "Do you Have Children",
                  iconData: Icons.person_3_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // No of Children
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: noOfChildrenTextEditingController,
                  labelText: "No of Children",
                  iconData: Icons.person_3_outlined,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // Profession
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: professionTextEditingController,
                  labelText: "Profession",
                  iconData: Icons.work,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Employment Status
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: employmentStatusTextEditingController,
                  labelText: "Employment Status",
                  iconData: Icons.badge,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Living Situation
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: livingSituationTextEditingController,
                  labelText: "Living Situation",
                  iconData: Icons.living_outlined,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // Willing To Relocate
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: willingToRelocateTextEditingController,
                  labelText: "Willing to Relocate",
                  iconData: Icons.move_down_outlined,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 30),
              // Relationship You Are looking For
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController:
                      relationshipYouAreLookingForTextEditingController,
                  labelText: "Relationship You Are looking for ?",
                  iconData: Icons.sync_alt,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 30),
//______________________________________________________________________________
              // Cultural Values
              const SizedBox(height: 20),
              const Text(
                "Cultural Values ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              // Nationality
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: nationalityTextEditingController,
                  labelText: "Nationality",
                  iconData: Icons.flag,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Education
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: educationTextEditingController,
                  labelText: "Education",
                  iconData: Icons.school,
                  isObscure: true,
                ),
              ),
              const SizedBox(height: 20),
              // Religion
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: religionTextEditingController,
                  labelText: "Religion",
                  iconData: Icons.pan_tool,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 20),
              // Ethnicity
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                height: 55,
                child: CustomTextFieldWidget(
                  editingController: ethnicityTextEditingController,
                  labelText: "Ethnicity",
                  iconData: Icons.group,
                  isObscure: false,
                ),
              ),
              const SizedBox(height: 40),
              // Login Button
              Container(
                width: MediaQuery.of(context).size.width - 210,
                height: 40,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    )),
                child: InkWell(
                  onTap: () {},
                  child: const Center(
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Don't have an Account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an Account ?",
                    style: TextStyle(color: Colors.amber, fontSize: 16),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text("Login Here",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                  ),
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
      ),
    );
  }
}
