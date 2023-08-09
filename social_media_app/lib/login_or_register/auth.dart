import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../pages/login.dart';
import '../pages/signup.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool isLoginPage=true;
  void togglePage(){
    setState(() {
      isLoginPage=!isLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
     return isLoginPage?LoginPage(onTap:togglePage):SignUP(onTap:togglePage );
  }
}