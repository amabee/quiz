import 'package:flutter/material.dart';
import 'package:quiz/core/utils/color.dart';
import 'package:provider/provider.dart';
import 'package:quiz/viewModels/auth/auth_view_model.dart';
import 'package:quiz/viewModels/user/user_view_model.dart';
import 'package:quiz/views/shop/shop_view.dart';
import 'package:quiz/views/user/user_profile_view.dart';

class HomeAppBarView extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const HomeAppBarView({
    Key? key,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    AuthViewModel authViewModel = context.watch<AuthViewModel>();
    UserViewModel userViewModel = context.watch<UserViewModel>();

    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    final orientation = MediaQuery.of(context).orientation;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      },
      child: Container(
        height: preferredSize.height,
        color: const Color(appBarColor),
        child: Stack(
          children: [
            const Positioned(
              top: 10,
              left: 10,
              child: CircleAvatar(
                backgroundImage: AssetImage('lib/assets/logo/user.png'),
                backgroundColor: Color(appBarColor),
              ),
            ),
            Positioned(
              top: 11,
              left: 60,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, ${userViewModel.name}',
                    style: const TextStyle(
                      fontSize: 20.0,
                      color: Color(appBarTitleColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(
                      'your current level is ${userViewModel.level}',
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Color(appBarSubTitleColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 8,
              right: 1,
              child: IconButton(
                onPressed: () async {
                  if (await authViewModel.logOut()) {
                    authViewModel.checkIfLogin();
                  }
                },
                icon: const Icon(
                  Icons.logout_rounded,
                  color: Color(primaryColor),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 35,
              child: IconButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShopView()));
                },
                icon: const Icon(
                  Icons.shopping_basket_outlined,
                  color: Color(primaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
