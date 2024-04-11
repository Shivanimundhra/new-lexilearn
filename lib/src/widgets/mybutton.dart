
import 'package:flutter/material.dart';
double padi = 4.0;

double getPad(){
  return padi;
}

void setPad(double pad){
  padi = pad;
}

Container myButton(
    {required String buttonText,required Function() onTapUp,required Function() onTapDown}) {
  return Container(
    width: 400,
    height: 60,
    child: AnimatedPositioned(
      duration: const Duration(milliseconds: 900),
      child: GestureDetector(
        onTapDown: (_) => onTapDown,
        onTapUp: (_) => onTapUp,
        child: AnimatedContainer(
          // height: 80,
          padding: EdgeInsets.all(padi),
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(7.0)),
          child: Container(
            // height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.blue,
            ),
            // height: 80,
            child: Center(
              child: Text(
                buttonText,
                style: const TextStyle(
                    fontSize: 29.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
      //bottom: animat ? 170 : -200,
      // left: 30,
    ),
  );
}



