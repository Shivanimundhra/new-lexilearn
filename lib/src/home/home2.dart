import 'package:flutter/material.dart';

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

class Home2 extends StatefulWidget {
  const Home2( {super.key});

  @override
  State<Home2> createState() => _HomeState();
}


class _HomeState extends State<Home2 > {
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
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },

      ),
      body: const levels(),

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


