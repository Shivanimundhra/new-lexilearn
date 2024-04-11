import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class streak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Streak Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DailyStreakCounter(),

    );
  }
}
class DailyStreakCounter extends StatefulWidget {
  @override
  DailyStreakCounterState createState() => DailyStreakCounterState();
}

class DailyStreakCounterState extends State<DailyStreakCounter> {
  int streakCount = 0;
  late DateTime lastRecordedDate ;

  @override
  void initState() {
    super.initState();
    _loadStreakCount();
  }

  Future<void> _loadStreakCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int savedStreakCount = prefs.getInt('$streakCount') ?? 0;//
    DateTime savedLastRecordedDate =
    DateTime.parse(prefs.getString('$lastRecordedDate') ?? '');//
    if (_isSameDay(savedLastRecordedDate, DateTime.now())) {
      setState(() {
        streakCount = savedStreakCount;
        lastRecordedDate = savedLastRecordedDate;
      });
    } else {
      _resetStreak();
    }
  }

  Future<void> _resetStreak() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      streakCount = 0;
      lastRecordedDate = DateTime.now();
    });
    prefs.setInt('$streakCount', streakCount);//
    prefs.setString('$lastRecordedDate', lastRecordedDate.toString());//
  }

  void _incrementStreak() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      streakCount++;
      lastRecordedDate = DateTime.now();
    });
    prefs.setInt('$streakCount', streakCount);//
    prefs.setString('$lastRecordedDate', lastRecordedDate.toString());//
  }

  bool _isSameDay(DateTime d1, DateTime d2) {
    return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daily Streak Counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Streak Count:',
            ),
            Text(
              '$streakCount',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (!_isSameDay(lastRecordedDate, DateTime.now())) {
            _incrementStreak();
          }
        },
        tooltip: 'Increment Streak',
        child: Icon(Icons.add),
      ),
    );
  }
}