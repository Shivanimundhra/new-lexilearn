import 'package:flutter/material.dart';
import 'package:lexilearn/Level2%20Pages/Level3%20Pages/1.dart';
import 'package:lexilearn/languages/french/level4/1.dart';
import 'package:lexilearn/languages/french/level5/1.dart';

import 'package:lexilearn/src/activity/session1/screen1.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:lexilearn/src/home/language.dart';
//import 'package:lexilearnn/screens/second.dart';



import '../../../Level2 Pages/1.dart';
import '../../activity/level1/one_activity.dart';
import '../../streak/streak.dart';

class levels extends StatefulWidget {
  const levels({super.key});

  @override
  State<levels> createState() => _levelsState();
}

class _levelsState extends State<levels> {
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
                'assets/image/home_image/crown.png', ' 12', Colors.yellow),
            appBarItem(
                'assets/image/home_image/offFire.png', DailyStreakCounterState().streakCount.toString(), Colors.grey),
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
                  MaterialPageRoute(builder: (context) => const SecondPage()));
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
              ),GestureDetector(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const En2pg3()));
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
              ),GestureDetector(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => En3p1()));
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
              GestureDetector(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => En4p1()));
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
              GestureDetector(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => En5pg1()));
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
