// // class exrea extends StatefulWidget {
// //   const exrea({super.key});
// //
// //   @override
// //   State<exrea> createState() => _exreaState();
// // }
// //
// // class _exreaState extends State<exrea> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const Placeholder();
// //   }
// // }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(extra());
// }
//
// class extra extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Button Click Animation'),
//         ),
//         body: Center(
//           child: MyButton(),
//         ),
//       ),
//     );
//   }
// }
//
// class MyButton extends StatefulWidget {
//   @override
//   _MyButtonState createState() => _MyButtonState();
// }
//
// class _MyButtonState extends State<MyButton> {
//   bool _isClicked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () {
//           setState(() {
//             _isClicked = !_isClicked;
//           });
//         },
//         child: AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//             width: _isClicked ? 200.0 : 150.0,
//             height: _isClicked ? 100.0 : 50.0,
//             decoration: BoxDecoration(
//               color: _isClicked ? Colors.blue : Colors.green,
//               borderRadius: BorderRadius.circular(_isClicked ? 20.0 : 10.0),
//             ),
//             child: Center(
//               child: Text(
//                 _isClicked ? 'Clicked!' : 'Click Me',
//                 style: TextStyle(
//                   fontSize: 20.0,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             ),
//       );
//     }
// }
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(extra());
// }
//
// class extra extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Duolingo Check Button'),
//         ),
//         body: Center(
//           child: CheckButton(),
//         ),
//       ),
//     );
//   }
// }
//
// class CheckButton extends StatefulWidget {
//   @override
//   _CheckButtonState createState() => _CheckButtonState();
// }
//
// class _CheckButtonState extends State<CheckButton> {
//   bool _isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () {
//           setState(() {
//             _isChecked = !_isChecked;
//           });
//         },
//         child: AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             curve: Curves.easeInOut,
//             width: 50.0,
//             height: 50.0,
//             decoration: BoxDecoration(
//               color: _isChecked ? Colors.green : Colors.grey[200],
//               borderRadius: BorderRadius.circular(25.0),
//               border: Border.all(
//                 color: Colors.green,
//                 width: 2.0,
//               ),
//             ),
//             child: _isChecked
//                 ? Icon(
//               Icons.check,
//               color: Colors.white,
//               size: 30.0,
//             )
//                 : null,
//           ),
//        );
//     }
// }
//
// import 'dart:async';
// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(extra());
// }
//
// class extra extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Shaking Button'),
//         ),
//         body: Center(
//           child: ShakingButton(),
//         ),
//       ),
//     );
//   }
// }
//
// class ShakingButton extends StatefulWidget {
//   @override
//   _ShakingButtonState createState() => _ShakingButtonState();
// }
//
// class _ShakingButtonState extends State<ShakingButton> {
//   bool _isClicked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: () {
//           setState(() {
//             _isClicked = true;
//             Timer(Duration(milliseconds: 500), () {
//               setState(() {
//                 _isClicked = false;
//               });
//             });
//           });
//         },
//         child: Stack(
//             alignment: Alignment.center,
//             children: [
//               AnimatedPositioned(
//                 duration: Duration(milliseconds: 100),
//                 curve: Curves.easeInOut,
//                 top: _isClicked ? 10 : 0,
//                 child: AnimatedContainer(
//                   duration: Duration(milliseconds: 100),
//                   curve: Curves.easeInOut,
//                   width: 100,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   child: Center(
//                     child: Text(
//                       _isClicked ? 'Clicked!' : 'Click Me',
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               if (_isClicked)
//                 Transform.rotate(
//                   angle: pi / 180 * 5,
//                   child: AnimatedContainer(
//                     duration: Duration(milliseconds: 100),
//                     curve: Curves.easeInOut,
//                     width: 100,
//                     height: 50,
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Center(
//                       child: Text(
//                         _isClicked ? 'Clicked!' : 'Click Me',
//                         style: TextStyle(
//                           fontSize: 16,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//             ],
//             ),
//         );
//     }
// }



import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(extra());
}

class extra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shaking Button'),
        ),
        body: Center(
          child: ShakingButton(),
        ),
      ),
    );
  }
}

class ShakingButton extends StatefulWidget {
  @override
  _ShakingButtonState createState() => _ShakingButtonState();
}

class _ShakingButtonState extends State<ShakingButton> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          setState(() {
            _isClicked = true;
            Timer(Duration(milliseconds: 500), () {
              setState(() {
                _isClicked = false;
              });
            });
          });
        },
        child: Container(
            width: 100,
            height: 50,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 100),
                  curve: Curves.easeInOut,
                  left: _isClicked ? -5 : 0,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.easeInOut,
                    width: 110,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        _isClicked ? 'Clicked!' : 'Click Me',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                if (_isClicked)
                  Transform.rotate(
                    angle: pi / 180 * 5,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 100),
                      curve: Curves.easeInOut,
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          _isClicked ? 'Clicked!' : 'Click Me',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            ),
        );
  }
}
