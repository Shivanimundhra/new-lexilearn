import 'package:flutter/material.dart';
import '../Login_register/login.dart';
import '../widgets/mybutton.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  double pad = 4.0;

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image(
              image: const AssetImage("assets/image/blue_boy_laltop.png"),
              height: size.height * 0.6,
              width: size.width * 0.9,
            ),
            const Center(
              child: Column(
                children: [
                  Text(
                    "Welcome to Lexilearn",
                    style:
                        TextStyle(fontSize: 33.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "lets start your journey with sign_in and sign_up",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                myButton(
                    buttonText: 'Login',
                     onTapDown: () {
                      setState(() {
                       setPad(0.0);
                       print('Value is ${getPad()}');
                     }); }, onTapUp: () {
                      setState(() {
                        Future whaitee() async {
                          await Future.delayed(const Duration(milliseconds: 200));
                          setState(() {
                            print('dfsf');
                            setPad(4.0);
                          });
                          await Future.delayed(const Duration(milliseconds: 300));
                          Navigator.push(
                              this.context, MaterialPageRoute(builder: (context) => const login()));
                        }
                      });
                }),
              ],
            )
          ],
        ),
      ),
    );
  }

}
