import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:lexilearn/src/activity/level1/secand_activity.dart';
import 'package:lexilearn/src/activity/session1/screenthird9.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:lexilearn/src/profile/profile.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class SevenPage extends StatefulWidget {
  const SevenPage({super.key});

  @override
  State<SevenPage> createState() => _SevenPageState();
}

double _initial = 0.0;

class _SevenPageState extends State<SevenPage> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  speak_Apple() async {
    await flutterTts.setLanguage("hi-IN");
    await flutterTts.setPitch(1);
    await flutterTts.speak("सेब");
  }

  speak_apple() async {
    await flutterTts.setLanguage("hi-IN");
    await flutterTts.setPitch(1.2);
    await flutterTts.speak("सेब");
  }

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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
          Row(children: [
            const SizedBox(
              width: 80.0,
            ),
            FloatingActionButton.large(
                onPressed: () {
                  speak_Apple();
                },
                child: const Icon(Icons.volume_up)),
            TextButton(
              onPressed: () {
                speak_Apple();
              },
              child: const Tooltip(
                message: 'सेब',
                triggerMode: TooltipTriggerMode.longPress,
              ),
            ),
            FloatingActionButton.small(
                onPressed: () {
                  speak_apple();
                },
                child: const Icon(Icons.volume_up)),
            TextButton(
              onPressed: () {
                speak_Apple();
              },
              child: const Tooltip(
                message: 'सेब',
                triggerMode: TooltipTriggerMode.longPress,
              ),
            )

          ]),
          const SizedBox(
            height: 20.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        boxcolor = Colors.greenAccent;
                        boxcolor1 = Colors.white;
                        boxcolor2 = Colors.white;
                        boxcolor3 = Colors.white;
                        ans = 1;
                      });
                    },
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        color: boxcolor,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                          child: Text(
                        "Boy",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 60.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        boxcolor = Colors.white;
                        boxcolor1 = Colors.greenAccent;
                        boxcolor2 = Colors.white;
                        boxcolor3 = Colors.white;
                        ans = 2;
                      });
                    },
                    child: Container(
                      height: 110,
                      width: 110,
                      decoration: BoxDecoration(
                        color: boxcolor1,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(
                          child: Text(
                        "Grapes",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            boxcolor = Colors.white;
                            boxcolor1 = Colors.white;
                            boxcolor2 = Colors.greenAccent;
                            boxcolor3 = Colors.white;
                            ans = 3;
                          });
                        },
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: boxcolor2,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Text(
                            "Apple",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      SizedBox(
                        width: 60.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            boxcolor = Colors.white;
                            boxcolor1 = Colors.white;
                            boxcolor2 = Colors.white;
                            boxcolor3 = Colors.greenAccent;
                            ans = 4;
                          });
                        },
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                            color: boxcolor3,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(
                              child: Text(
                            "House",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
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
                      onPressed: () {
                        if (_initial != 1 && ans == 3) {
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
                                                          page9()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              padding:
                                                  const EdgeInsets.all(15.0),
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
                                        Icons
                                            .sentiment_very_dissatisfied_outlined,
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
                                              padding:
                                                  const EdgeInsets.all(15.0),
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
                                                const SevenPage(),
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
    ));
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
