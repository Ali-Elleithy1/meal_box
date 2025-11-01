import 'package:flutter/material.dart';
import 'package:meal_box/screens/login_screen.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  void login() {}

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 24, color: Colors.grey),
            ),
            SizedBox(height: 16),
            Image.asset(
              'assets/images/MealBoxLogo.png',
              width: 150,
              height: 100,
            ),
            SizedBox(height: 16),
            Text(
              'Your all-in-one kitchen companion that makes cooking effortless. Discover thousands of delicious recipes, search by ingredients you already have, plan your meals for the week, and create smart grocery lists—all in one place. Whether you\'re meal prepping for the week ahead or figuring out what to cook with what\'s in your fridge, MealBox has you covered.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 48),
            Text(
              'Lets get started...',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.white,
                      minimumSize: Size(300, 50),
                      backgroundColor: Color(0xFF6a57f7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => LoginScreen()),
                      );
                    },
                    label: Text(
                      'Continue with Email',
                      style: TextStyle(color: Colors.white),
                    ),
                    icon: Icon(Icons.mail),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    label: Text('Continue with Google'),
                    icon: Image.asset(
                      'assets/images/google.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 48),
            Container(
              margin: EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Color(0xFF302f67),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(60),
                  bottomLeft: Radius.circular(33),
                  bottomRight: Radius.circular(33),
                ),
              ),
              width: double.infinity,
              height: 200,
              child: Align(
                alignment: AlignmentGeometry.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: TextButton(
                    onPressed: () {},
                    child: TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
