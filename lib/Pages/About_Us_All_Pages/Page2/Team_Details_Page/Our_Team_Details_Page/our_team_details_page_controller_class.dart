import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OurTeamDetailsPageControllerClass extends GetxController{
  TextEditingController ourTeamDetailsPageNameController = TextEditingController();
  TextEditingController ourTeamDetailsPageEmailController = TextEditingController();
  TextEditingController ourTeamDetailsPagePhoneNumberController = TextEditingController();
  TextEditingController ourTeamDetailsPageBioController = TextEditingController();

  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);
}