import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:lexilearn/src/activity/level1/secand_activity.dart';
import 'package:lexilearn/src/activity/session1/screen2.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import '../session1/screen1.dart';

class SecondPage1 extends StatefulWidget {
  const SecondPage1({super.key});

  @override
  State<SecondPage1> createState() => _SecondPageState1();
}

double _initial = 0.0;

class _SecondPageState1 extends State<SecondPage1> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Car");
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

  Color boxcolor = Colors.white;
  Color boxcolor1 = Colors.white;
  Color boxcolor2 = Colors.white;
  Color boxcolor3 = Colors.white;
  late int ans;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool? isapple = false;

    return SafeArea(
      child: Scaffold(
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
                    "सही चित्र चुनें",
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
                              speak();
                            },
                            child: const Icon(Icons.volume_up)),
                        const SizedBox(
                          width: 20,
                        ),
                        // TextButton(
                        //   onPressed: () {
                        //     //speak_one();
                        //   },
                        //   child: const Tooltip(
                        //     message: 'यह',
                        //     triggerMode: TooltipTriggerMode.longPress,
                        //     child: Text(
                        //       "This",
                        //       style: TextStyle(
                        //           fontSize: 25.0,
                        //           fontWeight: FontWeight.bold,
                        //           color: Colors.black),
                        //     ),
                        //   ),
                        // ),
                        // const Text("This",
                        //     style: TextStyle(
                        //         fontSize: 25.0, fontWeight: FontWeight.bold))),
                        // TextButton(
                        //   onPressed: () {
                        //     //speak_two();
                        //   },
                        //   child: const Tooltip(
                        //     message: 'एक',
                        //     triggerMode: TooltipTriggerMode.longPress,
                        //     child: Text(
                        //       "Is a",
                        //       style: TextStyle(
                        //           fontSize: 25.0,
                        //           fontWeight: FontWeight.bold,
                        //           color: Colors.black),
                        //     ),
                        //   ),
                        // ),
                        TextButton(
                          onPressed: () {
                            speak();
                          },
                          child: const Tooltip(
                            message: 'कार',
                            triggerMode: TooltipTriggerMode.longPress,
                            child: Text(
                              "Car",
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              boxcolor = Colors.green.shade400;
                              boxcolor1 = Colors.white;
                              boxcolor2 = Colors.white;
                              boxcolor3 = Colors.white;
                              ans = 1;
                            });
                          },
                          child: Container(
                            height: 200, // Increased height to accommodate text
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: boxcolor,
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Image(
                                    image: AssetImage("assets/activity_img/Girl.png"),
                                  ),
                                ),
                                SizedBox(height: 10), // Added SizedBox for spacing
                                Text(
                                  "लड़की",
                                  style: TextStyle(
                                    color: Colors.black, // Customize text color as needed
                                    fontSize: 16, // Customize text size as needed
                                    fontWeight: FontWeight.bold, // Customize text weight as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),





                        const SizedBox(
                          width: 20.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              boxcolor = Colors.white;
                              boxcolor1 = Colors.green.shade400;
                              boxcolor2 = Colors.white;
                              boxcolor3 = Colors.white;
                              ans = 1;
                            });
                          },
                          child: Container(
                            height: 200, // Increased height to accommodate text
                            width: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: boxcolor1,
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: Image(
                                    image: AssetImage("assets/activity_img/boy.png"),
                                  ),
                                ),
                                SizedBox(height: 10), // Added SizedBox for spacing
                                Text(
                                  "लड़का",
                                  style: TextStyle(
                                    color: Colors.black, // Customize text color as needed
                                    fontSize: 16, // Customize text size as needed
                                    fontWeight: FontWeight.bold, // Customize text weight as needed
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  boxcolor = Colors.white;
                                  boxcolor1 = Colors.white;
                                  boxcolor2 =Colors.green.shade400;
                                  boxcolor3 = Colors.white;
                                  ans = 2;
                                });
                              },
                              child: Container(
                                height: 200, // Increased height to accommodate text
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: boxcolor2,
                                        borderRadius: BorderRadius.circular(40.0),
                                      ),
                                      child: Image(
                                        image: AssetImage("assets/activity_img/Car.png"),
                                      ),
                                    ),
                                    SizedBox(height: 10), // Added SizedBox for spacing
                                    Text(
                                      "कार",
                                      style: TextStyle(
                                        color: Colors.black, // Customize text color as needed
                                        fontSize: 16, // Customize text size as needed
                                        fontWeight: FontWeight.bold, // Customize text weight as needed
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  boxcolor = Colors.white;
                                  boxcolor1 = Colors.white;
                                  boxcolor2 = Colors.white;
                                  boxcolor3 = Colors.green.shade400;
                                  ans =1;
                                });
                              },
                              child: Container(
                                height: 200, // Increased height to accommodate text
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: boxcolor3,
                                        borderRadius: BorderRadius.circular(40.0),
                                      ),
                                      child: Image(
                                        image: AssetImage("assets/activity_img/tree3.png"),
                                      ),
                                    ),
                                    SizedBox(height: 10), // Added SizedBox for spacing
                                    Text(
                                      "पेड़",
                                      style: TextStyle(
                                        color: Colors.black, // Customize text color as needed
                                        fontSize: 16, // Customize text size as needed
                                        fontWeight: FontWeight.bold, // Customize text weight as needed
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
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
                                          "_Grate Job_ ",
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
                                                            page1()));
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
                          } else if (_initial == 1 || ans != 3) {
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
                                              const SecondPage1(),
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
          )
        //Center(
        //   child: Text('Hello',style: TextStyle(
        //     color: Colors.amber,
        //     fontSize: 45,
        //   ),),
        // ),
      ),
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