import 'package:flutter/material.dart';
import 'package:quiz/models/user_model.dart';
import 'package:quiz/services/user_services.dart';

class UserProfileViewModel extends ChangeNotifier {
  String _name = 'Dummy';
  String _email = 'dummyemail@mail.com';
  String _imagePath = 'lib/assets/logo/user.png';

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get imagePath => _imagePath;

  set imagePath(String value) {
    _imagePath = value;
  }

  void setAllValue(String name, String email, String imagePath) {
    this.name = name;
    this.email = email;
    this.imagePath = imagePath;
  }

  Future getCurrentUser() async {
    UserModel? currentUser = await UserServices().getCurrentUser();
    setAllValue(currentUser!.name.toString(), currentUser.email.toString(),
        currentUser.imagePath.toString());
  }

  Future updateUserProfile() async {
    await UserServices().updateUserProfile();
    getCurrentUser();
  }
}
