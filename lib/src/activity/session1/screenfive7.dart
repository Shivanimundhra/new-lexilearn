import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../home/home.dart';

double _initial = 0.8;

class page6 extends StatefulWidget {
  const page6({super.key});

  @override
  State<page6> createState() => _five_activityState();
}

class _five_activityState extends State<page6> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Car");
  }

  speak_one() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("car");
  }

  speak_two() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("is a");
  }

  // speak_three() async {
  //await flutterTts.setLanguage("en-US");
  //await flutterTts.setPitch(1);
  //await flutterTts.speak("Apple");
//  }
  Color boxcolor = Colors.white;
  Color boxcolor1 = Colors.white;
  Color boxcolor2 = Colors.white;
  Color boxcolor3 = Colors.white;
  var ans;

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
                          "5/5",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700),
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
                    "सही विकल्प चुनें",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,

                        fontSize: 25.0,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Image(image: AssetImage('assets/activity_img/tree3.png'),),),
                    SizedBox(height: 20.0,),
                    // Column(
                    //   children: [
                    //         Text("find the correct word for above image",style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),
                    //   ],
                    // )
                  ],
                ),
                SizedBox(height: 30.0,),
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
                              ans=1;
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
                                  "Apple",
                                  style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        SizedBox(width: 60.0,),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              boxcolor = Colors.white;
                              boxcolor1 = Colors.greenAccent;
                              boxcolor2 = Colors.white;
                              boxcolor3 = Colors.white;
                              ans=2;

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
                                  "Tree",
                                  style: TextStyle(
                                      fontSize: 20.0, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.0,),
                    Column(
                      children: [Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                boxcolor = Colors.white;
                                boxcolor1 = Colors.white;
                                boxcolor2 = Colors.greenAccent;
                                boxcolor3 = Colors.white;
                                ans=3;

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
                                    "House",
                                    style: TextStyle(
                                        fontSize: 20.0, fontWeight: FontWeight.bold),
                                  )),
                            ),
                          ),
                          SizedBox(width: 60.0,),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                boxcolor = Colors.white;
                                boxcolor1 = Colors.white;
                                boxcolor2 = Colors.white;
                                boxcolor3 = Colors.greenAccent;
                                ans=4;

                              });

                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color:boxcolor3,
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
                        ],
                      ),

                      ],
                    )
                  ],
                ),
                SizedBox(height: 30.0,),
                Column(
                  children: [
                    SizedBox(
                      width: size.width * 0.9,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_initial != 1 && ans==2 ) {
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
                                                            Home()));
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
                          } else if (_initial == 2 ||ans!=2) {
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
                                              const page6(),
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
