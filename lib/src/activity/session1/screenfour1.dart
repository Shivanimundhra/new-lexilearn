import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lexilearn/src/activity/level1/five.dart';
import 'package:lexilearn/src/activity/level1/secand_activity.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:speech_to_text/speech_to_text.dart';

import '../../home/home.dart';

double _initial = 0.8;

class four_activity extends StatefulWidget {
  const four_activity({super.key});

  @override
  State<four_activity> createState() => _four_activityState();
}

class _four_activityState extends State<four_activity> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();
  final SpeechToText speechtotext = SpeechToText();
  var islisting = false;
  var texttospech="click on mic ro record";
  var text="your car";
  var ans;

  speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Your car");
  }

  speak_one() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Your");
  }

  speak_two() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Car");
  }

  // speak_three() async {
  //   await flutterTts.setLanguage("en-US");
  //   await flutterTts.setPitch(1);
  //   await flutterTts.speak("Good");
  // }
  // speak_four() async {
  //   await flutterTts.setLanguage("en-US");
  //   await flutterTts.setPitch(1);
  //   await flutterTts.speak("Day");
  // }

  void checkMic() async {
    bool micAvailable = await speechtotext.initialize();

    if (micAvailable) {
      print("MicroPhone Available");
    } else {
      print("User Denied the use of speech micro");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
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
                              Navigator.push(this.context,
                                  MaterialPageRoute(builder: (context) => const Home()));
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
                            "5/5",
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
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
                                speak();
                              },
                              child: const Icon(Icons.volume_up)),
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton(
                            onPressed: () {
                              speak_one();
                            },
                            child: const Tooltip(
                              message: 'उसकी',
                              triggerMode: TooltipTriggerMode.longPress,
                              child: Text(
                                "Your",
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
                              message: 'गाड़ी',
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


                      SizedBox(
                        height: 150.0,
                      ),
                      Column(
                        children: [
                          Text(texttospech,style: TextStyle(fontSize: 20.0),),
                          Container(
                            height: 100,
                            width: 100,
                            child: GestureDetector(
                                onTap: () async {
                                  if (!islisting) {
                                    bool micAvailable = await speechtotext.initialize();
                                    if (micAvailable) {
                                      setState(() {
                                        islisting = true;
                                      });
                                      speechtotext.listen(
                                          listenFor: Duration(seconds: 20),
                                          onResult: (result){
                                            setState(() {
                                              texttospech=result.recognizedWords;
                                            });

                                          }
                                      );
                                    }
                                  } else {
                                    setState(() {
                                      islisting=false;
                                      speechtotext.stop();
                                    });
                                  }
                                },


                                child: CircleAvatar(
                                  child:islisting ?Icon (Icons.record_voice_over_rounded): Icon(Icons.mic),
                                )),
                          )
                        ],
                      ),
                      SizedBox(height: 100,),
                      Column(
                        children: [
                          SizedBox(
                            width: size.width * 0.9,
                            child: ElevatedButton(
                              onPressed: () {
                                if (_initial != 1 && text==texttospech ) {
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
                                                                  five_activity()));
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
                                } else if (_initial == 1 || text!=texttospech) {
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
                                                    const four_activity(),
                                                  ),
                                                );
                                              },
                                              child: const Text(
                                                "Retray",
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
                ],
              ),
            )));
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