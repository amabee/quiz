import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz/models/evaluation_model.dart';
import 'package:quiz/views/user/edit_profile_page.dart';
import 'package:quiz/models/user_model.dart';
import 'package:quiz/core/utils/user_preferences.dart';
import 'package:quiz/core/utils/eval_preferences.dart';
import 'package:quiz/core/utils/color.dart';
import 'package:quiz/core/userWidgets/appbar_widget.dart';
import 'package:quiz/core/userWidgets/button_widget.dart';
import 'package:quiz/core/userWidgets/numbers_widget.dart';
import 'package:quiz/core/userWidgets/profile_widget.dart';
import 'package:quiz/viewModels/user/user_view_model.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    UserViewModel userViewModel = context.watch<UserViewModel>();
    final user = UserPreferences.myUser;
    final eval = EvalPreferences.myEval;

    return Builder(
      builder: (context) => Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: user.imagePath!,
              onClicked: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            const SizedBox(height: 20),
            buildName(user, userViewModel),

            //Center(child: buildUpgradeButton()),
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 45),
            buildCLJ(eval),
            buildLEA(eval),
            buildFC(eval),
            buildCDI(eval),
            buildSCE(eval),
            buildCA(eval)
          ],
        ),
      ),
    );
  }

  Widget buildName(UserModel user, UserViewModel userViewModel) => Column(
        children: [
          Text(
            userViewModel.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            userViewModel.email,
            style: TextStyle(color: Colors.grey),
          )
        ],
      );

  Widget buildCLJ(EvalModel eval) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(147, 16, 103, 30), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Criminal Law Jurisprudence',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              eval.CriminalLawJurisprudenceEval,
              style: const TextStyle(
                  fontSize: 24,
                  height: 1.4,
                  color: Color.fromARGB(147, 16, 103, 30)),
            ),
          ],
        ),
      );

  Widget buildLEA(EvalModel eval) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(147, 16, 103, 30), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Law Enforcement Administration',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              eval.LEAEval,
              style: const TextStyle(
                  fontSize: 24,
                  height: 1.4,
                  color: Color.fromARGB(147, 16, 103, 30)),
            ),
          ],
        ),
      );

  Widget buildFC(EvalModel eval) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(147, 16, 103, 30), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Forensics / Criminalistics',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              eval.ForensicCriminalisticEval,
              style: const TextStyle(
                  fontSize: 24,
                  height: 1.4,
                  color: Color.fromARGB(147, 16, 103, 30)),
            ),
          ],
        ),
      );

  Widget buildCDI(EvalModel eval) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(147, 16, 103, 30), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Crime Detection & Investigation',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              eval.CDIEval,
              style: TextStyle(
                  fontSize: 24,
                  height: 1.4,
                  color: Color.fromARGB(147, 16, 103, 30)),
            ),
          ],
        ),
      );

  Widget buildSCE(EvalModel eval) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(147, 16, 103, 30), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sociology of Crimes and Ethics',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              eval.SocioCrimEthicsEval,
              style: TextStyle(
                  fontSize: 24,
                  height: 1.4,
                  color: Color.fromARGB(147, 16, 103, 30)),
            ),
          ],
        ),
      );

  Widget buildCA(EvalModel eval) => Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(147, 16, 103, 30), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Correctional Administration',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              eval.CorrectionalAdminEval,
              style: TextStyle(
                  fontSize: 24,
                  height: 1.4,
                  color: Color.fromARGB(147, 16, 103, 30)),
            ),
          ],
        ),
      );
}
