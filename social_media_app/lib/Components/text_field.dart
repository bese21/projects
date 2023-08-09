import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget{
  final TextEditingController controller;
  final String textHint;
  final bool obsecureText;

  const MyTextField({super.key, 
    
    required this.controller,
    required this.textHint,
    required this.obsecureText
   
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:14,vertical:5),
      child: TextField(
   
        controller: controller,
        obscureText: obsecureText,
        decoration:  InputDecoration(
        
          suffixIcon:obsecureText==true? IconButton(onPressed: () {  },
          icon: Icon(Icons.remove_red_eye)) :null,
          hintText: textHint,
          hintStyle: TextStyle(
            color:Colors.grey,
          ),
          fillColor: Colors.white,
          filled:true,
       focusedBorder: const OutlineInputBorder(
        
        borderSide: BorderSide(
          color:Colors.white
        )
       ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.white
            )
          ) 
        ),
        
      ),
    );
  }


}