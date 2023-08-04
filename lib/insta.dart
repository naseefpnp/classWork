import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (Rect bounds) => LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.purple,
                    Colors.red,
                    Colors.yellow
                  ],
                  begin: Alignment.topLeft,

                  end: Alignment.bottomRight,
                ).createShader(bounds),
                child: FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 100,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                // Align the text to the bottom
                child: Text(
                  "instagram",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.black38,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: insta(),
  ));
}
