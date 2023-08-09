import 'package:flutter/material.dart';

import '../Components/button.dart';
import '../Components/text_field.dart';

class LoginPage extends StatefulWidget {
  final Function()?onTap;
  const LoginPage({super.key, this.onTap});

  @override
  State<LoginPage> createState() => _LogingeState();
}

class _LogingeState extends State<LoginPage> {
  final emailTextController=TextEditingController();
  final passwordController=TextEditingController();
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
              const Icon(Icons.account_balance,
              size: 50,),
              const SizedBox(
                height:50
              ),
              const Text("Welcome User"),
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
               MyButton(
                onTap:(){},
                text:"Sign In",
               ),
                SizedBox(
                height:10,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Not a member?',
               style: TextStyle(
                color:Colors.grey,
               ),),
                              TextButton(onPressed:widget.onTap, child: Text("sign up", style:TextStyle(
                                fontSize:18,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                                
                              )))
               ],)
            ],

              
          ),
        ),
      )
    );
  }
}
