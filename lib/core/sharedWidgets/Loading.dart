import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quiz/core/utils/color.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 242, 236, 203),
      child: const Center(
        child: SpinKitDualRing(
          color: Color(primaryColor),
          size: 40.0,
        ),
      ),
    );
  }
}
