import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Icon(
                  Icons.turn_left,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            SizedBox(height: 40),
            Text(
              "Let's sign you in.",
              style: TextStyle(
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Welcome back.",
              style: TextStyle(color: Colors.grey.shade200, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "You've been missed!",
              style: TextStyle(color: Colors.grey.shade200, fontSize: 20),
            ),
            SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "(+91)India",
                          style: TextStyle(
                            color: Colors.grey.shade200,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.expand_more_rounded,
                          color: Colors.grey.shade200,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                hintText: 'Enter your mobile number',
                hintStyle: TextStyle(
                  color: Colors.grey[600],
                ),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Center(
              child: SizedBox(
                child: Text(
                  "We will send you a one-time password",
                  style: TextStyle(color: Colors.grey.shade200, fontSize: 16),
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Center(
              child: SizedBox(
                child: Text(
                  "(OTP)",
                  style: TextStyle(color: Colors.grey.shade200, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            // ElevatedButton(
            //   onPressed: () {},
            //   style: ElevatedButton.styleFrom(
            //     primary: Colors.white,
            //     onPrimary: Colors.white,
            //     padding: EdgeInsets.all(16.0),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //     elevation: 0,
            //     minimumSize: Size(320.0, 50.0),
            //   ),
            //   child: Text(
            //     "Sign In",
            //     style: TextStyle(color: Colors.black, fontSize: 16),
            //   ),
            // ),
            //
            SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                child: Text(
                  "Carrier rates may apply",
                  style: TextStyle(color: Colors.grey.shade200, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: SizedBox(
                height: 60,
                width: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }
}
