import 'package:flutter/material.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:lexilearn/src/home/language.dart';
import 'package:lexilearn/src/spainish/level1/spain_one.dart';
//import 'package:lexilearnn/screens/second.dart';

import '../../../languages/french/level1/screen1.dart';
import '../../activity/level1/one_activity.dart';

class levels1 extends StatefulWidget {
  const levels1({super.key});

  @override
  State<levels1> createState() => _levelsState1();
}

class _levelsState1 extends State<levels1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1.7,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                      builder: (context) => language()),);
              },
              child: Ink.image(
                image: const AssetImage("assets/image/language/usaflag.png"),
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
            ),
            appBarItem(
                'assets/image/home_image/crown.png', ' 0', Colors.yellow),
            appBarItem(
                'assets/image/home_image/offFire.png', ' 0', Colors.grey),
            appBarItem('assets/image/home_image/gem.png', ' 120', Colors.red),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.white,
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => const SecondPage()),
      //     );
      //   },
      //   child: Icon(
      //     Icons.directions_bike,
      //     color: Colors.blue,
      //     size: 30,
      //   ),
      // ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          ListView(
            children: [
              const SizedBox(
                height: 100,
              ),
              lessons(),
              const SizedBox(
                height: 90,
              ),
              lessons2(),
              const SizedBox(
                height: 100,
              ),
              lessons3(),
              const SizedBox(
                height: 100,
              ),
              lessons4(),
              const SizedBox(
                height: 100,
              ),
              lessons5(),
            ],
          ),
          // ButtonTheme(
          //   height: 30,
          //   minWidth: 80,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular((10))),
          //   child: ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => const SecondPage()),
          //         );
          //       },
          //       child: const Text(
          //         'Try Plus',
          //         style: TextStyle(fontStyle: FontStyle.italic),
          //       )),
          // )
        ],
      ),
    );
  }

  Widget appBarItem(String image, String num, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          height: 25,
        ),
        Text(
          num,
          style: TextStyle(color: color, fontSize: 10),
        ),
      ],
    );
  }

  Widget lessons() {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircularProgressIndicator(
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation(Colors.green[600]),
              value: 0.5,
              strokeWidth: 60,
            ),
            CircleAvatar(
              backgroundColor: Colors.grey[100],
              radius: 40,
            ),

            GestureDetector(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FrPg1()));
            },
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Image.asset(
                      'assets/image/home_image/start.jpg',
                      height: 55,
                    ),
                  ),
                )),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/image/home_image/crown.png',
              height: 45,
            ),
            const Text(
              '1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Text(
          'Level',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 35),
        )
      ],
    );
  }

  Widget lessons2() {
    return Container(
      margin: const EdgeInsets.only(left: 250),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation(Colors.green[600]),
                value: 0.5,
                strokeWidth: 60,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 40,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/image/home_image/start.jpg',
                  height: 55,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/image/home_image/crown.png',
                height: 45,
              ),
              const Text(
                '2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            'Level',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          )
        ],
      ),
    );
  }

  Widget lessons3() {
    return Container(
      margin: const EdgeInsets.only(left: 200),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation(Colors.green[600]),
                value: 0.5,
                strokeWidth: 60,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 40,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/image/home_image/start.jpg',
                  height: 55,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/image/home_image/crown.png',
                height: 45,
              ),
              const Text(
                '3',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            'Level',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          )
        ],
      ),
    );
  }

  Widget lessons4() {
    return Container(
      margin: const EdgeInsets.only(left: 200),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation(Colors.green[600]),
                value: 0.5,
                strokeWidth: 60,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 40,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/image/home_image/start.jpg',
                  height: 55,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/image/home_image/crown.png',
                height: 45,
              ),
              const Text(
                '4',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            'Level',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          )
        ],
      ),
    );
  }

  Widget lessons5() {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircularProgressIndicator(
                backgroundColor: Colors.grey[300],
                valueColor: AlwaysStoppedAnimation(Colors.green[600]),
                value: 0.5,
                strokeWidth: 60,
              ),
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                radius: 40,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/image/home_image/start.jpg',
                  height: 55,
                ),
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/image/home_image/crown.png',
                height: 45,
              ),
              const Text(
                '5',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Text(
            'Level',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          )
        ],
      ),
    );
  }
}
