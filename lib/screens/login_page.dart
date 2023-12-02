
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practise/routes/app_router.gr.dart';
@RoutePage()
class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  String name = 'peshawa';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                context.router.pop(name);
              },
              child: const Text('Profile page'),
            ),
          ],
        ),
      ),
    );
  }
}
