import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{
  final Function()? onTap;
  final String text;
  const MyButton({super.key,required this.onTap,required this.text});




  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () { print("kfsdlfsd"); },
      child: Container(
        height:50,
        margin: EdgeInsets.all(4),
       padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color:Colors.black,
          borderRadius:BorderRadius.circular(10)
        ),
        child:Center(
          child:Text(text,
          style: const TextStyle(color: Colors.white)),
          
    
        )
    
      ),
    );
  }}