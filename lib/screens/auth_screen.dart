import 'package:flutter/material.dart';
import 'package:run_earn_app/constants.dart';
import 'package:run_earn_app/screens/login_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: BackButton(),
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/person_running.png",
            width: size.width * 0.85,
            height: size.height * 0.4,
          ),
          Container(
            height: size.height * 0.4,
            width: size.width,
            margin: EdgeInsets.symmetric(horizontal: size.width * 0.15 / 2),
            decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(90),
                border: Border.all(
                    color: Colors.white.withOpacity(0.5), width: 0.1)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Run",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Color(0xFFF14985).withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 20,
                      margin: EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                          color: Color(0xFFF14985),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        color: Color(0xFFF14985).withOpacity(0.6),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                      },
                      icon: Icon(Icons.arrow_back_rounded),
                      label: Text(
                        "Next",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fixedSize: Size(size.width * 0.45, 60),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Wrap(
              children: [
                Text("Already have an account? ",style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                  child: Text("Sing In",style: TextStyle(
                    color: buttonColor,
                    fontSize: 16,
                  ),),
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}
