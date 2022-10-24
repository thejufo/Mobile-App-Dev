import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  Page3(this.phonenumber);

  String phonenumber;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Text(
              'Verify your phone',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 16),
            Text(
              'Enter the 6-digit code we sent to\n$phonenumber',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 24,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'X X X X X X',
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 1)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1))),
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              child: Text('Verify'),
              color: Colors.red,
              minWidth: 200,
              colorBrightness: Brightness.dark,
              shape: StadiumBorder(),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      )),
    );
  }
}
