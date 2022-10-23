import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset('assets/internet.png'),
            ),
            SizedBox(height: 24),
            Text(
              'No Internet!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Please check your internet\nand try again!',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32),
            MaterialButton(
              onPressed: () {},
              color: Colors.deepOrange,
              colorBrightness: Brightness.dark,
              child: Text(
                'Retry',
                style: TextStyle(fontSize: 18),
              ),
              shape: StadiumBorder(),
              minWidth: 200,
              padding: EdgeInsets.symmetric(vertical: 10),
            )
          ],
        ),
      ),
    );
  }
}
