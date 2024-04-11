import 'package:flutter/material.dart';
import 'package:lexilearn/src/Login_register/Ragister.dart';
import 'package:lexilearn/src/Login_register/login.dart';

class welcome extends StatefulWidget {
  welcome({super.key});

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  double pad = 4.0;
  double pading = 7.0;

  void initState(){
    super.initState();
    startanimation();
  }

  bool animat = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              AnimatedPositioned(
                child: Image(
                  image: AssetImage("assets/image/blue_boy_laltop.png"),
                  height: size.height * 0.5,
                ),
                duration: const Duration(milliseconds: 900),
               // top: animat ? 60 : -90,
                //left: -53,
              ),
              const AnimatedPositioned(
                duration: Duration(milliseconds: 900),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Login & Register",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Center(
                        child: Text(
                          "lets begin our first session with inroduction ",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
               // top: animat ? 250 : -500,
                // left: 35,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 400,
                height: 60,
                child: AnimatedPositioned(
                  child: GestureDetector(
                    onTapDown: (_) => setState(() {
                      pad = 0.0;
                    }),
                    onTapUp: (_) => setState(() {
                      whaitee();
                    }),
                    child: AnimatedContainer(
                      // height: 80,
                      padding: EdgeInsets.all(pad),
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Container(
                        // height: 80,
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 29.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        // padding: const EdgeInsets.symmetric(
                        //    vertical: 12.0, horizontal: 114.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  duration: const Duration(milliseconds: 900),
                  //bottom: animat ? 170 : -200,
                  // left: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const AnimatedPositioned(
                duration: Duration(milliseconds: 900),
                child: Text(
                  "OR",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                //bottom: animat ? 125 : -150,
                //left: 165,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                child: AnimatedPositioned(
                  duration: const Duration(milliseconds: 900),
                  child: GestureDetector(
                    onTapDown: (_) => setState(() {
                      pading = 0.0;
                    }),
                    onTapUp: (_) => setState(() {
                      whaite();
                    }),
                    child: AnimatedContainer(
                      padding: EdgeInsets.only(bottom: pading),
                      duration: const Duration(milliseconds: 200),
                      decoration: BoxDecoration(
                          color: Color(0xffc4d6f2),
                          borderRadius: BorderRadius.circular(35.0)),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 95.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          color: Colors.blue,
                        ),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 29.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                //  bottom: animat ? 50 : -100,
                  //left: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future whaite() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      pading = 7.0;
    });
    await Future.delayed(Duration(milliseconds: 300));
    Navigator.push(
        this.context, MaterialPageRoute(builder: (context) => ragister()));
  }

  Future whaitee() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      pad = 4.0;
    });
    await Future.delayed(Duration(milliseconds: 300));
    Navigator.push(
        this.context, MaterialPageRoute(builder: (context) => login()));
  }

  Future startanimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animat = true;
    });
    await Future.delayed(Duration(milliseconds: 3000));
  }
}
