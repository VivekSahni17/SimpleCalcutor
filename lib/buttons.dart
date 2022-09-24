import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  
  final color;
  final textcolor;
  final String buttonText;
  final buttontapped;
  
  const MyButton({this.color, this.textcolor, this.buttontapped,required this.buttonText});
  
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: buttontapped,
      child: Padding(
        padding: const EdgeInsets.all(0.2),
        child: ClipRect(
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,style: TextStyle(
                color: textcolor,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),

              ),
            ),
          ),
        ),
      ),
    );
  }
  
}