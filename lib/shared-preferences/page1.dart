
import 'package:flutter/material.dart';
import 'package:practise/shared-preferences/page2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  SharedPreferences? login;
  String? userName;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }
  void isLogin ()async{
    login  =await SharedPreferences.getInstance();
    setState(() {
      userName = login?.getString('UserName');
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Welcome $userName'),
        ElevatedButton(onPressed: (){
          login?.setBool('Login', true);
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Page2()));
        }, child: const Text('LogOut')),
      ],
    )));
  }
}
