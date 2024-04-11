import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lexilearn/src/onbording_screen/onebord.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    startanimation();
  }

  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1200),
              top: animate ? 30.0 : -40.0,
              left: animate ? 20.0 : -40.0,
              child: Image(
                image: AssetImage('assets/image/splash_screen/splash_uppp.png'),
              )),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            top: 130,
            left: animate ? 38.0 : -90,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 1200),
              opacity: animate ? 1 : 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '.Lexilearn/',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Learn new Language \n"
                    "Free for All.",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 1200),
            bottom: animate ? 178 : -250,
            width: 350,
            height: 350,
            //Center(
            child: Image(
              image: AssetImage(
                'assets/image/splash_screen/splash_main.jpg',
              ),
            ),
          ),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1300),
              bottom: animate ? 90 : -100,
              right: 60,
              child: Image(
                image:
                    AssetImage('assets/image/splash_screen/splach_downn.png'),
              )),
        ],
      ),
    );
  }

  Future startanimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 2000));
    Navigator.pushReplacement(
        this.context,
        MaterialPageRoute(
          builder: (context) => onebord(),
        ));
  }
}
