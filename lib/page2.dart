import 'package:flutter/material.dart';
import 'package:untitled2/page3.dart';

class Page2 extends StatelessWidget {

  final TextEditingController controller = TextEditingController();

  void navigateToPage3(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return Page3(controller.text);
        }
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 60,),
              Text(
                'Enter your Phone',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),


              SizedBox(height: 16,),

              Text(
                'We will send you a 6-digit code to\nverify your number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),


              SizedBox(height: 28,),

              TextField(
                controller: controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  enabledBorder: OutlineInputBorder(

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)
                  )
                ),
              ),

              Spacer(),

              MaterialButton(
                onPressed: () => navigateToPage3(context),
                child: Text('Next'),
                color: Colors.red,
                colorBrightness: Brightness.dark,
                shape: StadiumBorder(),
                minWidth: 200,
              ),

              SizedBox(height: 24,),
            ],
          ),
        ),
      ),
    );
  }
}
