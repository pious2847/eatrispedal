import 'package:eatrispedal/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:eatrispedal/theme/colors.dart';
import 'package:eatrispedal/screens/home_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primcolor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: secondarybgcolor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: SizedBox(
                    height: 120,
                    width: 120,
                  child: Image(
                    image: AssetImage('assets/icons/playstore.png'),
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome !!',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: secondarytextcolor),
                      ),
                      Text(
                        'Sign-Up',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: secondarytextcolor),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                       TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: secondarybgcolor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          filled: false,
                          prefixIcon:
                              Icon(Icons.person, color: secondarybgcolor),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: secondarybgcolor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          filled: false,
                          prefixIcon:
                              Icon(Icons.email, color: secondarybgcolor),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: secondarybgcolor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                          filled: false,
                          prefixIcon: Icon(
                            Icons.lock,
                            color: secondarybgcolor,
                          ),
                          suffixIcon: IconButton(
                            icon: _isObscured
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscured = !_isObscured;
                              });
                            },
                          ),
                        ),
                        obscureText: _isObscured,
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                          child: Text(
                            'SignUp',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(
                                    "Already have an account?",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                       Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                                    },
                                    child: Text(
                                      'Login',
                                      style:
                                          TextStyle(color: secondarytextcolor),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
