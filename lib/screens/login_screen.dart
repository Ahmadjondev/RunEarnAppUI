import 'package:flutter/material.dart';
import 'package:run_earn_app/constants.dart';
import 'package:run_earn_app/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 64, top: 8),
            child: Image.asset("assets/images/login_icon.png",
                width: size.width * 0.4),
          ),
          Text(
            "Log In",
            style: TextStyle(
                color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Color(0xFF7B61FF).withOpacity(.6), width: 1)),
            child: TextField(
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              cursorColor: Colors.white,
              decoration: InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
            decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                    color: Color(0xFF7B61FF).withOpacity(.17), width: 1)),
            child: TextField(
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlignVertical: TextAlignVertical.center,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.4),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                suffix: Image.asset("assets/images/pass_hide.png",height: 24,width: 24,),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: check,
                      onChanged: (value) {
                        setState(() {
                          check = value!;
                        });
                      },
                      checkColor: Colors.white,
                      activeColor: buttonColor,
                      fillColor: MaterialStatePropertyAll(buttonColor),
                      splashRadius: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    Text(
                      "Remember Me",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password ?  ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
              },
              child: Text(
                "Log In",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                fixedSize: Size(size.width * 0.835, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Divider(
                    height: 1,
                    color: Color(0xFF4B576B),
                    indent: 30,
                    thickness: 1,
                    endIndent: 22,
                  ),
                ),
                Text(
                  "Or continue with",
                  style: TextStyle(color: Color(0xFF4B576B)),
                ),
                Expanded(
                  child: Divider(
                    height: 1,
                    color: Color(0xFF4B576B),
                    endIndent: 30,
                    indent: 22,
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width * 0.25,
                  height: 80,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color(0xFF535E6E).withOpacity(0.7), width: 1),
                  ),
                  child: Image.asset("assets/images/google.png"),
                ),
                Container(
                  width: size.width * 0.25,
                  height: 80,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color(0xFF535E6E).withOpacity(0.7), width: 1),
                  ),
                  child: Image.asset("assets/images/facebook.png"),
                ),
                Container(
                  width: size.width * 0.25,
                  height: 80,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Color(0xFF535E6E).withOpacity(0.7), width: 1),
                  ),
                  child: Image.asset("assets/images/twitter.png"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Wrap(
              children: [
                Text(
                  "New User?",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: buttonColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
