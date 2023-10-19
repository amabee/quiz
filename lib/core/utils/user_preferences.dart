import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/models/user_model.dart';
import 'package:quiz/viewModels/user/user_view_model.dart';

class UserPreferences {
  static UserModel myUser = UserModel(
    // imagePath:
    //     'https://i.pinimg.com/originals/e9/b6/ee/e9b6ee581409ee9213e1a5754f2772a1.gif',
    imagePath: 'lib/assets/logo/user.png',
    name: 'User',
    email: 'usermail',
    password: 'password',
    loginStatus: false,
    exp: 0,
    lvl: 1,
    coin: 0,
    gems: 0,
  );
}
