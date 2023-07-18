import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../helpers/roundBtn.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController aController;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    aController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    aController.forward();
    aController.addListener(() {
      setState(() {
        aController.value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: aController.value * 100,
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 42.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontFamily: 'Cherry',
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    pause: Duration(milliseconds: 5000),
                    animatedTexts: [
                      TyperAnimatedText('Harmony'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundBtn(
              btnTitle: 'Log In',
              color: Color(0xFF91C97C),
              onPressed: () {
                Navigator.pushNamed(context, 'login');
              },
            ),
            RoundBtn(
              btnTitle: 'Register',
              color: Color(0xFE458CED),
              onPressed: () {
                Navigator.pushNamed(context, 'register');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Text(
//   'Harmony',
//   style: TextStyle(
//     fontSize: 40.0,
//     color: Colors.white,
//     fontWeight: FontWeight.w100,
//     fontFamily: 'Cherry',
//   ),
// ),

// DefaultTextStyle(
// style: TextStyle(
// fontSize: 40.0,
// color: Colors.white,
// fontWeight: FontWeight.w100,
// fontFamily: 'Cherry',
// ),
// child: AnimatedTextKit(
// totalRepeatCount: 10,
// pause: Duration(milliseconds: 10000),
// animatedTexts: [
// TyperAnimatedText('Harmony'),
// ],
// ),
// ),

// Padding(
//   padding: EdgeInsets.symmetric(vertical: 16.0),
//   child: Material(
//     color: Colors.blueAccent,
//     borderRadius: BorderRadius.circular(30.0),
//     elevation: 5.0,
//     child: MaterialButton(
//       onPressed: () {
//         Navigator.pushNamed(context, 'register');
//       },
//       minWidth: 200.0,
//       height: 42.0,
//       child: Text(
//         'Register',
//       ),
//     ),
//   ),
// ),
