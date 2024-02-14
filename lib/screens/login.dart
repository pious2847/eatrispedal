import 'package:flutter/material.dart';
import 'package:eatrispedal/theme/colors.dart';
import 'package:eatrispedal/screens/home_page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primcolor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/images/pizza.png'),
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const Home()), // Replace Home() with your actual home page widget
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
                          BorderRadius.circular(15.0), // Set border radius
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: Text(
                    'Login',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Navigate to password reset page
                    },
                    child: const Text('Forgot Password?'),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value:
                            true, // Set the initial value of the checkbox as needed
                        onChanged: (value) {
                          // Implement logic to handle checkbox state changes
                        },
                      ),
                      const Text('Remember me'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement Google authentication
                    },
                    icon: const Icon(
                      Icons.g_mobiledata_outlined,
                      color: secondarytextcolor,
                    ),
                    label: const Text(
                      'Google',
                      style: TextStyle(color: secondarytextcolor),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red, // Use your Google button color
                    ),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton.icon(
                    onPressed: () {
                      // Implement Facebook authentication
                    },
                    icon: const Icon(
                      Icons.facebook,
                      color: secondarytextcolor,
                    ),
                    label: const Text(
                      'Facebook',
                      style: TextStyle(color: secondarytextcolor),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Use your Facebook button color
                    ),
                  ),
                 
                ],
              ),
               const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Text("Don't have and account?"),
                      TextButton(onPressed: (){}, child: const Text('Signup', style: TextStyle(color: secondarytextcolor),))
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}
