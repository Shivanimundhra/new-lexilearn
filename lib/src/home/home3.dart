import 'package:flutter/material.dart';
import 'package:lexilearn/src/blog/blog.dart';
import 'package:lexilearn/src/home/levels/level3.dart';
import 'package:lexilearn/src/profile/profile.dart';

import '../../questions/questions.dart';
import 'levels/level.dart';
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//      body:
//       Center(
//         child: Text("Home"),
//       ),
//     );
//   }
// }

class Home3 extends StatefulWidget {
  const Home3( {super.key});

  @override
  State<Home3> createState() => _HomeState1();
}


class _HomeState1 extends State<Home3> {
  late int languagenumber;
  var searchString='assets/image/home_image/person.png';
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          navBarItems('assets/image/home_image/level.png', 'assets/image/home_image/level2.png'),
          navBarItems('assets/image/home_image/book.png', 'assets/image/home_image/book2.png'),
          navBarItems('assets/image/home_image/person.png', 'assets/image/home_image/person2.png'),
          navBarItems('assets/image/home_image/shield.png', 'assets/image/home_image/shield2.png'),
          navBarItems('assets/image/home_image/market.png', 'assets/image/home_image/market2.png'),


        ],

        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });

          // Example navigation based on index
          switch(index) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home3()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => BlogScreen()));
              break;
            case 2:
              getData();
              Navigator.push(context, MaterialPageRoute(builder: (context) => profile()));
              break;
            case 3:
              getData();
              Navigator.push(context, MaterialPageRoute(builder: (context) => TestScreen()));
              break;
          // Handle other indexes similarly
          }
        },

      ),
      body: const level3(),

    );
  }
  BottomNavigationBarItem navBarItems(String image, String activeImage)
  {
    return BottomNavigationBarItem(icon: Image.asset(image, height: 30,),
      label: '',
      activeIcon: Image.asset(activeImage),
    );
  }
}


