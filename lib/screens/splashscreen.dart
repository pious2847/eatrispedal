import 'package:eatrispedal/screens/home_page.dart';
import 'package:eatrispedal/screens/login.dart';
import 'package:eatrispedal/theme/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primcolor,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Image(
              image: AssetImage('assets/images/hamburger.png'),
              height: 300,
              width: 300,
            ),
            const Column(
              children: [
                Text(
                  'WELCOME TO',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: secondarybtncolor),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'EATERIS PEDAL',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: secondarybtncolor),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()), // Replace Home() with your actual home page widget
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    secondarybtncolor), // Set background color
                foregroundColor: MaterialStateProperty.all<Color>(
                    primtextcolor), // Set text color
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Set border radius
                  ),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Get Started',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
