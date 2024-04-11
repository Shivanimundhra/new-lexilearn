import 'package:flutter/material.dart';

void main() {
  runApp(TestScreen());
}

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MCQ Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TestPage(),
    );
  }
}

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<String> questions = [
    "What is the synonym of 'happy'?",
    "What is the synonym of 'beautiful'?",
    "What is the synonym of 'fast'?",
    "What is the synonym of 'angry'?",
    "What is the synonym of 'clever'?",
    "What is the synonym of 'sad'?",
    "What is the synonym of 'small'?",
    "What is the synonym of 'funny'?",
    "What is the synonym of 'serious'?",
    "What is the synonym of 'brave'?",
    "What is the synonym of 'old'?",
    "What is the synonym of 'large'?",
    "What is the synonym of 'hot'?",
    "What is the synonym of 'cold'?",
    "What is the synonym of 'easy'?",
    "What is the synonym of 'exciting'?",
    "What is the synonym of 'difficult'?",
    "What is the synonym of 'honest'?",
    "What is the synonym of 'happy'?",
    "What is the synonym of 'slow'?",
  ];

  List<List<String>> options = [
    ["Sad", "Joyful", "Unhappy", "Delighted"],
    ["Ugly", "Pretty", "Attractive", "Gorgeous"],
    ["Quick", "Slow", "Rapid", "Swift"],
    ["Mad", "Happy", "Pleased", "Furious"],
    ["Stupid", "Intelligent", "Clever", "Smart"],
    ["Sad", "Happy", "Gloomy", "Depressed"],
    ["Big", "Tiny", "Little", "Minute"],
    ["Silly", "Serious", "Funny", "Humorous"],
    ["Boring", "Exciting", "Serious", "Grim"],
    ["Fearful", "Courageous", "Brave", "Bold"],
    ["Young", "New", "Aged", "Elderly"],
    ["Big", "Tiny", "Huge", "Gigantic"],
    ["Cold", "Warm", "Boiling", "Scorching"],
    ["Chilly", "Freezing", "Icy", "Frigid"],
    ["Difficult", "Simple", "Hard", "Easy"],
    ["Boring", "Interesting", "Fascinating", "Captivating"],
    ["Tough", "Hard", "Complex", "Challenging"],
    ["Truthful", "Deceitful", "Loyal", "Sincere"],
    ["Cheerful", "Joyful", "Happy", "Delighted"],
    ["Fast", "Quick", "Lethargic", "Sluggish"],
  ];

  List<int> correctAnswers = [
    1, 3, 0, 6, 9, 0, 1, 0, 1, 19,
    18, 11, 12, 22, 25, 1, 16, 17, 20, 1
  ]; // Index of correct options for each question

  List<int?> selectedAnswers = List.filled(20, null); // Nullable int to handle unselected answers

  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Yourself'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(questions[index],style: TextStyle(
                  fontSize: 20
              )
                ,),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: options[index].map((option) {
                  return RadioListTile<int?>(
                    title: Text(option),
                    value: options[index].indexOf(option),
                    groupValue: selectedAnswers[index],
                    onChanged: (int? value) {
                      setState(() {
                        selectedAnswers[index] = value;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Calculate score
          score = 0;
          for (int i = 0; i < selectedAnswers.length; i++) {
            if (selectedAnswers[i] != null && selectedAnswers[i] == correctAnswers[i]) {
              score++;
            }
          }
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Your Score'),
                content: Text('You scored $score out of ${questions.length}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}