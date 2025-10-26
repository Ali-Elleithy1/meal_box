import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Welcome to', style: TextStyle(fontSize: 24)),
              SizedBox(height: 16),
              Image.asset(
                'assets/images/MealBox.png',
                width: 300,
                height: 200,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 16),
              Text(
                'Lets get started...',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Continue with email'),
                icon: Icon(Icons.mail),
              ),
              SizedBox(height: 8),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text('Continue with Google'),
                icon: Image.asset(
                  'assets/images/google.png',
                  width: 24,
                  height: 24,
                ),
              ),
              SizedBox(height: 48,),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
