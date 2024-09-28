import 'dart:io';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthenticationController extends GetxController{

  static AuthenticationController authController =Get.find();

  late Rx<File> pickedFile;
  File? get profileImage => pickedFile.value;
  XFile? imageFile ;

  pickImageFileFromGallery()async
  {
     imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(imageFile != null)
      {
        Get.snackbar("Profile Image", "You have Successfully Picked Up Your Profile Image");
      }
    pickedFile = Rx<File>(File(imageFile!.path));
  }

  pickImageFileFromCamera()async
  {
     imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if(imageFile != null)
    {
      Get.snackbar("Profile Image", "You have Successfully Captured Up Your Profile Image using Camera");
    }

    pickedFile = Rx<File>(File(imageFile!.path));
  }
}