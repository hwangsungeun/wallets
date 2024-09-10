

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textColor
  });

  @override
  Widget build(BuildContext context) {
    /*
    * 비율로 작업 했을때
    * */
    return Container(
      width: MediaQuery.of(context).size.width/2.7,
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(45)),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20,
            color: textColor
        ),
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //       color: bgColor,
    //       borderRadius: BorderRadius.circular(45)),
    //   child: Padding(
    //     padding:
    //     const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
    //     child: Text(
    //       text,
    //       style: TextStyle(
    //           fontSize: 20,
    //           color: textColor
    //       ),
    //     ),
    //   ),
    // );
  }

}