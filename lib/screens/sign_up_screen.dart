import 'package:flutter/material.dart';
import 'package:meal_box/widgets/InputField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
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
            const SizedBox(height: 24),
            Row(
              children: [
                Checkbox(value: false, onChanged: null),
                SizedBox(width: 8),
                Text('By clicking you agree to '),
                Text(
                  'terms & conditions',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Color(0xFF6a57f7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {},
              child: Text('Register', style: TextStyle(color: Colors.white)),
            ),
            Spacer(),
            Container(
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
          ],
        ),
      ),
    );
  }
}
