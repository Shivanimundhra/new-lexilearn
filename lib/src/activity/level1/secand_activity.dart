import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:lexilearn/src/activity/level1/thired_activity.dart';
import 'package:lexilearn/src/home/home.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'one_activity.dart';

class Second_activity extends StatefulWidget {
  const Second_activity({super.key});

  @override
  State<Second_activity> createState() => _SecondPageState();
}

double _initial = 0.2;

class _SecondPageState extends State<Second_activity> {
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();

  speak() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("This is a apple ");
  }

  speak_one() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("This");
  }

  speak_two() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("is a");
  }

  speak_three() async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.speak("Apple");
  }

  var one;
  var two;
  var three;
  var four;
  var five;
  var six;
  var seven;
  var eight;
  var non;
  var non1;
  var non2;
  var non3;



  Color boxcolor = Colors.grey;
  Color boxcolor1 = Colors.grey;
  Color boxcolor2 = Colors.grey;
  Color boxcolor3 = Colors.grey;
  Color boxcolor4 = Colors.grey;
  Color boxcolor5 = Colors.grey;
  Color boxcolor6 = Colors.grey;
  Color boxcolor7 = Colors.grey;

  late int ans;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool? isapple = false;


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
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
                        "2/5",
                        style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Column(
                children: [
                  Text("make correct pairs of words",style: TextStyle(fontSize: 23.0,fontWeight: FontWeight.bold),)

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
                            // boxcolor = Colors.green.shade400;
                            // boxcolor1 = Colors.grey;
                            // boxcolor2 = Colors.grey;
                            // boxcolor3 = Colors.grey;
                            // boxcolor4 = Colors.grey;
                            // boxcolor5 = Colors.grey;
                            // boxcolor6 = Colors.grey;
                            // boxcolor7 = Colors.grey;
                            boxcolor = Colors.green.shade400;
                            one=1;

                           // ans=1;
                          });
                         // one=1;
                          if(one==non && non==one){
                          // boxcolor = Colors.green.shade400;
                          //  boxcolor7 = Colors.green.shade400;
                          }
                          else{
                            boxcolor = Colors.red.shade400;
                            boxcolor7 = Colors.red.shade400;
                          }
                         // non=1;
                         // non1=8;
                         // non2=8;
                          //non3=8;

                        },
                        child: Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                            color: boxcolor,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Center(child: Text("कार",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))
                        ),
                      ),


                      const SizedBox(
                        width: 20.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // boxcolor = Colors.grey;
                            // boxcolor1 = Colors.green.shade400;
                            // boxcolor2 = Colors.grey;
                            // boxcolor3 = Colors.grey;
                            // boxcolor4 = Colors.grey;
                            // boxcolor5 = Colors.grey;
                            // boxcolor6 = Colors.grey;
                            // boxcolor7 = Colors.grey;


                            two=2;
                           // ans=2;
                          });
                          if(two==non1 && non1==two){
                            boxcolor1 = Colors.green.shade400;
                            //  boxcolor7 = Colors.green.shade400;
                          }
                          else{
                            boxcolor1 = Colors.red.shade400;
                          }
                          non1=2;
                          non=2;
                          non2=8;
                          non3=8;
                        },
                        child: Container(
                          height: 80,
                          width: 150,
                          decoration: BoxDecoration(
                            color: boxcolor1,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child:   Center(child: Text("Your",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))

                        ),
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
                          SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // boxcolor = Colors.grey;
                                // boxcolor1 = Colors.grey;
                                // boxcolor2 = Colors.green.shade400;
                                // boxcolor3 = Colors.grey;
                                // boxcolor4 = Colors.grey;
                                // boxcolor5 = Colors.grey;
                                // boxcolor6 = Colors.grey;
                                // boxcolor7 = Colors.grey;


                                ans=3;
                              });
                              if(three==non2 && non2==three){
                                boxcolor2 = Colors.green.shade400;
                                //  boxcolor7 = Colors.green.shade400;
                              }
                              else{
                                boxcolor2 = Colors.red.shade400;
                              }
                              three=3;
                              non=3;
                              non1=8;
                              non2=3;
                              non3=8;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: boxcolor2,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child:  Center(child: Text("विश्वविद्यालय",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))

                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // boxcolor = Colors.grey;
                                // boxcolor1 = Colors.grey;
                                // boxcolor2 = Colors.grey;
                                // boxcolor3 = Colors.green.shade400;
                                // boxcolor4 = Colors.grey;
                                // boxcolor5 = Colors.grey;
                                // boxcolor6 = Colors.grey;
                                // boxcolor7 = Colors.grey;

                                four=4;
                                ans=4;

                              });
                              if(four==non3 && non3==four){
                                boxcolor3 = Colors.green.shade400;
                                //  boxcolor3 = Colors.green.shade400;
                              }
                              else{
                                boxcolor3 = Colors.red.shade400;
                              }

                              non=4;
                              non1=3;
                              non2=8;
                              non3=4;
                            },
                            child: Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: boxcolor3,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child:  Center(child: Text("Farm",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
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
                                // boxcolor = Colors.grey;
                                // boxcolor1 = Colors.grey;
                                // boxcolor2 = Colors.grey;
                                // boxcolor3 = Colors.grey;
                                // boxcolor4 = Colors.green.shade400;
                                // boxcolor5 = Colors.grey;
                                // boxcolor6 = Colors.grey;
                                // boxcolor7 = Colors.grey;

                                five=5;
                                ans=3;
                              });
                              if(five==non3 && non3==five){
                                boxcolor4 = Colors.green.shade400;
                                //  boxcolor3 = Colors.green.shade400;
                              }
                              else{
                                boxcolor4 = Colors.red.shade400;
                              }
                              five=4;
                              non=5;
                              non1=4;
                              non2=3;
                              non3=4;
                            },
                            child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: boxcolor4,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child:  Center(child: Text("खेत",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))

                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // boxcolor = Colors.grey;
                                // boxcolor1 = Colors.grey;
                                // boxcolor2 = Colors.grey;
                                // boxcolor3 = Colors.grey;
                                // boxcolor4 = Colors.grey;
                                // boxcolor5 = Colors.green.shade400;
                                // boxcolor6 = Colors.grey;
                                // boxcolor7 = Colors.grey;

                                six=6;
                                ans=4;
                              });
                              if(six==non2 && non2==six){
                                // boxcolor = Colors.green.shade400;
                                boxcolor5 = Colors.green.shade400;
                              }
                              else{
                                boxcolor5 = Colors.red.shade400;
                              }

                              non=6;
                              non1=5;
                              non2=3;
                              non3=4;
                            },
                            child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: boxcolor5,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const  Center(child: Text("University",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0,),
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
                                // boxcolor = Colors.grey;
                                // boxcolor1 = Colors.grey;
                                // boxcolor2 = Colors.grey;
                                // boxcolor3 = Colors.grey;
                                // boxcolor4 = Colors.grey;
                                // boxcolor5 = Colors.grey;
                                // boxcolor6 = Colors.green.shade400;
                                // boxcolor7 = Colors.grey;

                                seven=7;
                                ans=3;
                              });
                              if(seven==non1 && non1==seven){
                                // boxcolor = Colors.green.shade400;
                                boxcolor6 = Colors.green.shade400;
                              }
                              else{
                                boxcolor6 = Colors.red.shade400;
                              }
                              non1=2;
                              non=6;
                            },
                            child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: boxcolor6,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const  Center(child: Text("आपका",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))

                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                // boxcolor = Colors.grey;
                                // boxcolor1 = Colors.grey;
                                // boxcolor2 = Colors.grey;
                                // boxcolor3 = Colors.grey;
                                // boxcolor4 = Colors.grey;
                                // boxcolor5 = Colors.grey;
                                // boxcolor6 = Colors.grey;
                                // boxcolor7 = Colors.green.shade400;
                                boxcolor7 = Colors.green.shade400;

                                eight=8;
                               // ans=4;

                              });
                              if(one){
                               // boxcolor = Colors.green.shade400;
                                boxcolor7 = Colors.green.shade400;
                              }
                              else{
                                boxcolor7 = Colors.red.shade400;
                              }
                             // non=1;
                             // non1=7;
                            },
                            child: Container(
                                height: 80,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: boxcolor7,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: const  Center(child: Text("Car",style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.w700),))

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),


                ],
              ),
              const SizedBox(
                height: 50.0,
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
                                                  const T_active(),
                                                ),
                                              );
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
                        }
                        else if(_initial==1 || ans!=3) {
                          setState(() {
                            _initial = 0.2;
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
                                  SizedBox(height: 10.0,),
                                  TextButton(onPressed: (){
                                    Navigator.push(
                                      this.context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                        const SecondPage(),
                                      ),
                                    );
                                  }, child: const Text("Retry",style: TextStyle(fontSize: 20.0,color: Colors.red),))
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
                        "N E X T ",
                        style: TextStyle(color: Colors.white, fontSize: 23.0),
                      ),
                    ),
                  )
                ],
              )
            ],
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
