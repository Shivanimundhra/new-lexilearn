import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:lexilearn/languages/french/level1/screen12.dart';
import 'package:lexilearn/src/activity/level1/secand_activity.dart';
import 'package:lexilearn/src/activity/session1/screen2.dart';
import 'package:lexilearn/src/activity/session1/screenthird9.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

//import '../profile/profile.dart';
// import '../level1/five.dart';
// import '../level1/four.dart';
// import '../session1/screensix1.dart';

class Frpg11 extends StatefulWidget {
  const Frpg11({super.key});

  @override
  State<Frpg11> createState() => _SixPageState();
}

double _initial = 0.0;

class _SixPageState extends State<Frpg11> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  speak_Apple() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("My house is big");
  }

  // speak_one() async {
  //   await flutterTts.setLanguage("en-US");
  //   await flutterTts.setPitch(1);
  //   await flutterTts.speak("This");
  // }
  //
  // speak_two() async {
  //   await flutterTts.setLanguage("en-US");
  //   await flutterTts.setPitch(1);
  //   await flutterTts.speak("is a");
  // }
  //
  // speak_three() async {
  //   await flutterTts.setLanguage("en-US");
  //   await flutterTts.setPitch(1);
  //   await flutterTts.speak("Apple");
  // }

  Color boxcolor = Colors.white60;
  Color boxcolor1 = Colors.white60;
  Color boxcolor2 = Colors.white60;
  Color boxcolor3 = Colors.white60;
  late int ans;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool? isapple = false;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xFFE6F5EC),
          body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //FloatingActionButton(onPressed: (){},child: const Icon(Icons.arrow_back),backgroundColor: Colors.white,),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  this.context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()));
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 35.0,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          _progressbar(),
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "1/5",
                            style:
                            TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 150),
                    child: const Text(
                      "सही अनुवाद चुनेंं",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20.0,
                          ),
                          FloatingActionButton.small(
                              onPressed: () {
                                speak_Apple();
                              },
                              child: const Icon(Icons.volume_up)),
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              //speak_Apple();
                            },
                            child: Text(
                              "My house is big",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height:100.0,
                  ),
                  Column(
                    children: [

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            boxcolor = Colors.greenAccent;
                            boxcolor1 = Colors.white60;
                            boxcolor2 = Colors.white60;
                            boxcolor3 = Colors.white60;
                            ans=0;
                          });
                        },
                        child: Container(
                          height: size.height * 0.1/1.5,
                          width: size.width*0.9,
                          decoration: BoxDecoration(
                            color: boxcolor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Text(
                                "मेरी कार बड़ी है",
                                style: TextStyle(
                                    fontSize: 20.0, fontWeight: FontWeight.bold),
                              )),
                        ),
                      ),
                      SizedBox(height: 30.0,),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            boxcolor = Colors.white60;
                            boxcolor1 = Colors.greenAccent;
                            boxcolor2 = Colors.white60;
                            boxcolor3 = Colors.white60;
                            ans=1;

                          });

                        },
                        child: Container(
                          height: size.height * 0.1/1.5,
                          width: size.width*0.9,
                          decoration: BoxDecoration(
                            color: boxcolor1,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Text(
                                "यह पेड़ बहुत बड़ा है",
                                style: TextStyle(
                                    fontSize: 20.0, fontWeight: FontWeight.bold),
                              )),
                        ),

                      ),
                      SizedBox(height: 30.0,),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                boxcolor = Colors.white60;
                                boxcolor1 = Colors.white60;
                                boxcolor2 = Colors.greenAccent;
                                boxcolor3 = Colors.white60;
                                ans=2;

                              });
                            },
                            child: Container(
                              height: size.height * 0.1/1.5,
                              width: size.width*0.9,
                              decoration: BoxDecoration(
                                color: boxcolor2,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                  child: Text(
                                    "मेरा घर बड़ा है",
                                    style: TextStyle(
                                        fontSize: 20.0, fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                          SizedBox(height: 30.0,),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                boxcolor = Colors.white60;
                                boxcolor1 = Colors.white60;
                                boxcolor2 = Colors.white60;
                                boxcolor3 = Colors.greenAccent;
                                ans=3;

                              });

                            },
                            child: Container(
                              height: size.height * 0.1/1.5,
                              width: size.width*0.9,
                              decoration: BoxDecoration(
                                color:boxcolor3,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Center(
                                  child: Text(
                                    "यह मेरा घर है",
                                    style: TextStyle(
                                        fontSize: 20.0, fontWeight: FontWeight.bold),
                                  )),
                            ),


                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 90.0,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.9,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_initial != 1 && ans == 2) {
                                  setState(() {
                                    _initial = _initial + 0.2;
                                  });
                                  showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0)),
                                    builder: (context) => Container(
                                      height: 200,
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Row(
                                            children: [
                                              Icon(
                                                Icons.flag,
                                                size: 35,
                                                color: Colors.green,
                                              ),
                                              SizedBox(
                                                width: 25.0,
                                              ),
                                              Text(
                                                "Grate Job ",
                                                style: TextStyle(
                                                    fontSize: 25.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green),
                                              ),
                                              SizedBox(
                                                width: 40.0,
                                              ),
                                              Icon(
                                                Icons.sentiment_satisfied_alt,
                                                size: 35,
                                                color: Colors.green,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 20.0,
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(
                                                  width: size.width * 0.9,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                          this.context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  Frpg12()));
                                                    },
                                                    style: ElevatedButton.styleFrom(
                                                      padding: const EdgeInsets.all(15.0),
                                                      backgroundColor: Colors.green,
                                                      shadowColor: Colors.grey,
                                                    ),
                                                    child: const Text(
                                                      "NEXT SESSION",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 23.0),
                                                    ),
                                                  ))
                                            ],
                                          )
                                        ],
                                      ),
                                      //color:Colors.white60,
                                    ),
                                  );
                                } else if (_initial == 1 || ans != 2) {
                                  setState(() {
                                    _initial = 0.0;
                                  });
                                  showModalBottomSheet(
                                    context: context,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0)),
                                    builder: (context) => Container(
                                      height: 230,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          const Row(
                                            children: [
                                              Icon(
                                                Icons.flag,
                                                size: 35,
                                                color: Colors.red,
                                              ),
                                              SizedBox(
                                                width: 25.0,
                                              ),
                                              Text(
                                                "Answer wrong",
                                                style: TextStyle(
                                                    fontSize: 25.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red),
                                              ),
                                              SizedBox(
                                                width: 40.0,
                                              ),
                                              Icon(
                                                Icons.sentiment_very_dissatisfied_outlined,
                                                size: 35,
                                                color: Colors.red,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 30.0,
                                          ),
                                          Column(
                                            children: [
                                              SizedBox(
                                                  width: size.width * 0.9,
                                                  child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                      padding: const EdgeInsets.all(15.0),
                                                      backgroundColor: Colors.red,
                                                      shadowColor: Colors.grey,
                                                    ),
                                                    child: const Text(
                                                      "NEXT SESSION",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 23.0),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  this.context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                    const Frpg11(),
                                                  ),
                                                );
                                              },
                                              child: const Text(
                                                "Retry",
                                                style: TextStyle(
                                                    fontSize: 20.0, color: Colors.red),
                                              ))
                                        ],
                                      ),
                                      //color:Colors.white60,
                                    ),
                                  );
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(10.0),
                                backgroundColor: Colors.black,
                                shadowColor: Colors.grey,
                              ),
                              child: const Text(
                                "C h e c k ",
                                style: TextStyle(color: Colors.white, fontSize: 23.0),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ]),
            //Center(
            //   child: Text('Hello',style: TextStyle(
            //     color: Colors.amber,
            //     fontSize: 45,
            //   ),),
            // ),
          ),
        )
    );
  }
}

Widget _progressbar() {
  return LinearPercentIndicator(
    // width: MediaQuery.of(context).size.width - 50,
    width: 220,
    animation: true,
    lineHeight: 20.0,
    animationDuration: 200,
    percent: _initial,
    barRadius: const Radius.circular(30.0),
    progressColor: Colors.green,
    backgroundColor: Colors.green.shade200,
  );
}