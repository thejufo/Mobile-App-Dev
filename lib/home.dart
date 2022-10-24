import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/page2.dart';

class HomeScreen extends StatelessWidget {

  void navigateToPage2(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext ctx) => Page2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/gymer.png'),
            SizedBox(height: 24),
            Text(
              'Welcome to\nour fitness app',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Please login before your proceed to\ntrack your activity',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 32),
            MaterialButton(
              onPressed: () => navigateToPage2(context),
              child: Text('Login with Phone'),
              minWidth: 200,
              colorBrightness: Brightness.light,
              shape: StadiumBorder(side: BorderSide(width: 1, color: Colors.grey)),
            ),
            SizedBox(height: 8),
            MaterialButton(
              onPressed: () {},
              child: Text('Login with Google'),
              color: Colors.red,
              minWidth: 200,
              colorBrightness: Brightness.dark,
              shape: StadiumBorder(),
            )
          ],
        ),
      ),
    );
  }
}
