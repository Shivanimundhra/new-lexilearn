import 'package:flutter/material.dart';
import 'package:lexilearn/src/home/home.dart';

import '../activity/level1/one_activity.dart';
import 'home1.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';
import 'home5.dart';

class language extends StatelessWidget {
  const language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Language',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: LanguageList(),

    );
  }
}

class LanguageList extends StatelessWidget {
  late int languagenumber ;
  late int languagenumber1 ;
  late int languagenumber2 ;
  late int languagenumber3 ;
  late int languagenumber4 ;
  late int languagenumber5 ;
  String searchString = 'English';
  String searchString1 = 'Spanish';
  String searchString2 = 'Hindi';
  String searchString3 = 'French';
  String searchString4 = 'Russian';
  String searchString5 = 'German';

  final List<String> languages = [
    'English',
    'Spanish',
    'Hindi',
    'French',
    'Russian',
    'German',


  ];

  final List<String> leadingImages = [
    'assets/image/language/usaflag.png',

    'assets/image/language/spain.jpg',
    'assets/image/language/india.jpg',
    'assets/image/language/frensh.png',
    'assets/image/language/russia.png',
    'assets/image/language/german.png',


  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2.0,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  side: BorderSide(color: Colors.orange),
                ),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    leadingImages[index],
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(languages[index]),
                trailing: InkWell(
                  splashColor: Colors.orange,
                  onTap: () async {
                    // Delay for 900 milliseconds before navigating
                    await Future.delayed(Duration(milliseconds: 200));

                    // Navigate to a new screen here

                   languagenumber=languages.indexOf(searchString);
                    if(languagenumber==0){
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home()),
                    );}
                   languagenumber1=languages.indexOf(searchString1);
                    if(languagenumber1==1){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home1()),
                      );}
                    languagenumber2=languages.indexOf(searchString2);
                    if(languagenumber2==2){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home2()),
                      );}
                    languagenumber3=languages.indexOf(searchString3);
                    if(languagenumber3==3){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home3()),
                      );}
                    languagenumber4=languages.indexOf(searchString4);
                    if(languagenumber4==4){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Home4()),
                      );}
                    languagenumber5=languages.indexOf(searchString5);
                    if(languagenumber5==5){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>Home5()),
                      );}
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, // Orange color effect
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_forward, color: Colors.orange),

                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CourseDetailScreen extends StatelessWidget {
  final String language;

  CourseDetailScreen({required this.language});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Detail - $language'),
      ),
      body: Center(
        child: Text('Details for $language will go here.'),
      ),
    );
  }
}


