import 'package:flutter/material.dart';
import 'package:run_earn_app/constants.dart';
import 'package:run_earn_app/screens/components/history_item.dart';

import 'pages/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: buttonColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: Color(0xFFCDCDCD),
            ),
          ),
        ),
        leadingWidth: 40,
        title: Row(
          children: [
            CircleAvatar(child: Image.asset("assets/images/avatar.png")),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "HELLO!\nAhmadjon",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            )
          ],
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon:
                Image.asset("assets/images/direct.png", width: 24, height: 24),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/sms.png", width: 24, height: 24),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Stack(
        children: [
          HomePage(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              margin: EdgeInsets.only(left: 38, right: 38, bottom: 32),
              decoration: BoxDecoration(
                color: Color(0xFF2F3C50),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white.withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    icon: Image.asset("assets/images/home.png",
                        color: index == 0 ? silverBarColor : Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    icon: Image.asset("assets/images/cup.png",
                        color: index == 1 ? silverBarColor : Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    icon: Image.asset("assets/images/bag.png",
                        color: index == 2 ? silverBarColor : Colors.white),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    icon: Image.asset("assets/images/user.png",
                        color: index == 3 ? silverBarColor : Colors.white),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
