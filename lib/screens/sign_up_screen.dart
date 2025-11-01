import 'package:flutter/material.dart';
import 'package:meal_box/widgets/InputField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Register',
              style: TextStyle(
                color: Color(0xFF302f67),
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 24),
            InputField(
              labelText: 'Email',
              icon: Icons.mail,
              inputType: TextInputType.emailAddress,
              obscureText: false,
              textColor: Color(0xFF302f67),
              prefixIconColor: Color(0xFF302f67),
              borderColor: Colors.black,
            ),
            const SizedBox(height: 16),
            InputField(
              labelText: 'Name',
              icon: Icons.person,
              inputType: TextInputType.text,
              obscureText: false,
              textColor: Color(0xFF302f67),
              prefixIconColor: Color(0xFF302f67),
              borderColor: Colors.black,
            ),
            const SizedBox(height: 16),
            InputField(
              labelText: 'Password',
              icon: Icons.lock,
              inputType: TextInputType.text,
              obscureText: true,
              textColor: Color(0xFF302f67),
              prefixIconColor: Color(0xFF302f67),
              borderColor: Colors.black,
            ),
            const SizedBox(height: 16),
            InputField(
              labelText: 'Confirm Password',
              icon: Icons.lock,
              inputType: TextInputType.text,
              obscureText: true,
              textColor: Color(0xFF302f67),
              prefixIconColor: Color(0xFF302f67),
              borderColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
