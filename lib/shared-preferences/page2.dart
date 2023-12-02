

import 'package:flutter/material.dart';
import 'package:practise/shared-preferences/page1.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  final formKey = GlobalKey<FormState>();
   SharedPreferences? login;
  var userController = TextEditingController();
  var passController = TextEditingController();
  late bool newUser;
  void isLogin() async {
    login = await SharedPreferences.getInstance();
    newUser = (login?.getBool('Login') ?? true);
    if (newUser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Page1()));
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogin();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "enter user",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          )),
                      controller: userController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter user';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "enter password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                const BorderSide(color: Colors.white, width: 2),
                          )),
                      controller: passController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'enter password';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          formKey.currentState!.validate();
                           String userName = userController.text;
                           String passName = userController.text;
                          if (userName != '' && passName != '') {
                            login?.setBool('Login', false);
                            login?.setString('UserName', userName);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Page1()));
                          }
                        },
                        child: const Text('login'))
                  ],
                )),
          ],
        ),
      ),
    );
  }



  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    userController.dispose();
    passController.dispose();
  }
}
