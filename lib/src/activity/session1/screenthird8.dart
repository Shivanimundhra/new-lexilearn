import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lexilearn/src/activity/level1/four.dart';
import 'package:lexilearn/src/activity/level1/secand_activity.dart';
import 'package:lexilearn/src/activity/session1/screen4.dart';
import 'package:lexilearn/src/activity/session1/screenthird9.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../home/home.dart';
//import 'one_activity.dart';

class page8 extends StatefulWidget {
  const page8({super.key});

  @override
  State<page8> createState() => _T_activeState();
}

double _initial = 0.4;

class _T_activeState extends State<page8> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();


  speak_one() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("This");
  }

  speak_two() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("book");
  }

  speak_three() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("is");
  }

  speak_four() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("my");
  }
  Are() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Are");
  }

  have() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Have");
  }

  want() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Want");
  }

  Must() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("must");
  }

  itis() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("It");
  }

  Color boxcolor = Colors.grey.shade50;
  Color boxcolor1 = Colors.grey.shade50;
  Color boxcolor2 = Colors.grey.shade50;
  Color boxcolor3 = Colors.grey.shade50;
  Color boxcolor4 = Colors.grey.shade50;
  Color boxcolor5 = Colors.grey.shade50;
  String text1="hello";
  late int ans;

  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("This $text apple ? ");
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool? isapple = false;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            Container(
              child: const Text(
                "Lets start our first session",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    fontStyle: FontStyle.italic),
              ),
            ),
            const SizedBox(
              height: 18.0,
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
                      "3/5",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    )
                  ],
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
                    const SizedBox(
                      width: 20.0,
                    ),
                    FloatingActionButton.small(
                        onPressed: () {
                          speak(text1);
                        },
                        child: const Icon(Icons.volume_up)),
                    TextButton(
                      onPressed: () {
                        speak_one();
                      },
                      child: const Tooltip(
                        message: 'यह',
                        triggerMode: TooltipTriggerMode.longPress,
                        child: Text(
                          "This",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    // const Text("This",
                    //     style: TextStyle(
                    //         fontSize: 25.0, fontWeight: FontWeight.bold))),
                    TextButton(
                      onPressed: () {
                        speak_two();
                      },
                      child: const Tooltip(
                        message: 'एक',
                        triggerMode: TooltipTriggerMode.longPress,
                        child: Text(
                          "______",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        speak_three();
                      },
                      child: const Tooltip(
                        message: 'किताब',
                        triggerMode: TooltipTriggerMode.longPress,
                        child: Text(
                          "book.",
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
            SizedBox(
              height: 130.0,
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
                          boxcolor = Colors.green.shade400;
                          boxcolor1 = Colors.grey.shade50;
                          boxcolor2 = Colors.grey.shade50;
                          boxcolor3 = Colors.grey.shade50;
                          boxcolor4 = Colors.grey.shade50;
                          boxcolor5 = Colors.grey.shade50;
                          ans=1;

                          //  text=Text("is a") as String;
                        });
                        speak_two();
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: boxcolor,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                            child: Text("is",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          boxcolor = Colors.grey.shade50;
                          boxcolor1 = Colors.green.shade400;
                          boxcolor2 = Colors.grey.shade50;
                          boxcolor3 = Colors.grey.shade50;
                          boxcolor4 = Colors.grey.shade50;
                          boxcolor5 = Colors.grey.shade50;
                          ans=2;
                        });
                        Are();
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: boxcolor1,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                            child: Text("are",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          boxcolor = Colors.grey.shade50;
                          boxcolor1 = Colors.grey.shade50;
                          boxcolor2 = Colors.green.shade400;
                          boxcolor3 = Colors.grey.shade50;
                          boxcolor4 = Colors.grey.shade50;
                          boxcolor5 = Colors.grey.shade50;
                          ans=2;
                        });
                        have();
                      },
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: boxcolor2,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Center(
                            child: Text("have",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold))),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
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
                              boxcolor = Colors.grey.shade50;
                              boxcolor1 = Colors.grey.shade50;
                              boxcolor2 = Colors.grey.shade50;
                              boxcolor3 = Colors.green.shade400;
                              boxcolor4 = Colors.grey.shade50;
                              boxcolor5 = Colors.grey.shade50;
                              ans=4;
                            });
                            want();
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: boxcolor3,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                                child: Text("want",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              boxcolor = Colors.grey.shade50;
                              boxcolor1 = Colors.grey.shade50;
                              boxcolor2 = Colors.grey.shade50;
                              boxcolor3 = Colors.grey.shade50;
                              boxcolor4 = Colors.green.shade400;
                              boxcolor5 = Colors.grey.shade50;
                              ans=5;
                            });
                            Must();
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: boxcolor4,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                                child: Text("a",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              boxcolor = Colors.grey.shade50;
                              boxcolor1 = Colors.grey.shade50;
                              boxcolor2 = Colors.grey.shade50;
                              boxcolor3 = Colors.grey.shade50;
                              boxcolor4 = Colors.grey.shade50;
                              boxcolor5 = Colors.green.shade400;
                              ans=6;
                            });
                            itis();
                          },
                          child: Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: boxcolor5,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Center(
                                child: Text(
                                  "it ",
                                  style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 80.0,
            ),
            Column(
              children: [
                SizedBox(
                  width: size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_initial != 1 && ans ==1 ) {
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
                                      "__Grate Job__ ",
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
                                      "_Answer wrong_",
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
                                          const page8(),
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
                      padding: const EdgeInsets.all(15.0),
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
