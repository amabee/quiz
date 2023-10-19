import 'package:flutter/material.dart';
import 'package:ms_undraw/ms_undraw.dart';

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UnDraw(
              illustration: UnDrawIllustration.empty,
              color: Colors.blue,
              placeholder: const CircularProgressIndicator(),
              errorWidget:
                  const Icon(Icons.error_outline, color: Colors.red, size: 40),
              height: 600,
            ),
            const Text(
              "NOTHING HERE YET",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Raleway',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
