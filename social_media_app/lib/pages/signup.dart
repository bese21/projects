import 'package:flutter/material.dart';
import '../Components/button.dart';
import '../Components/text_field.dart';

class SignUP extends StatefulWidget {
  final Function()?onTap;
  const SignUP({super.key, this.onTap});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  final emailTextController = TextEditingController();
  final passwordController = TextEditingController();
    final passwordConfirm = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 218, 240),
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.center,
            children:  [
             const SizedBox(
              height:50
            ),
             
              const SizedBox(
                height:50
              ),
              const Text("Create An Account"),
               const SizedBox(height: 50),
                MyTextField(
                controller: emailTextController,
                textHint:"email",
                obsecureText:false,
               ),
               SizedBox(
                height:10,
               ),
                MyTextField(
                controller: passwordController,
                textHint:"password",
                obsecureText:true,
               ),
                SizedBox(
                  height: 10,
                ),
                MyTextField(
                  controller: passwordConfirm,
                  textHint: "confirm",
                  obsecureText: true,
                ),
               MyButton(
                onTap:(){},
                text:"Sign Up",
               ),
                SizedBox(
                height:10,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Already Have an account?',
               style: TextStyle(
                color:Colors.grey,
               ),),
                              TextButton(onPressed:widget.onTap, child: Text("Login ", style:TextStyle(
                                fontSize:18,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                
                              )))
               ],)
            ],

              
          ),
        ),
      )
    );;
  }
}