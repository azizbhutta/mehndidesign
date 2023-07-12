import 'package:flutter/material.dart';
import 'package:mehndidesignapp/firebase_services/splash_services.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashScreen = SplashServices();

  @override
  void initState() {
    super.initState();
    splashScreen.isLogin(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeeee4),
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 100,top: 20),
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/splash 1.jpg'),
                  fit: BoxFit.cover),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 250,top: 10),
              child: Container(
                height: 180,
                width: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/splash 2.webp'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Mehndi Design\n 2024',
                      style: TextStyle(fontSize: 19,
                          fontWeight: FontWeight.bold,letterSpacing: 1.8,fontFamily: 'Lemon',
                          color: Colors.black45)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 20),
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/splash 7.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200,top: 20),
              child: Container(
                height: 140,
                width: 140,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/splash 4.png'),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}