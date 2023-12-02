
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practise/routes/app_router.gr.dart';
@RoutePage()
class LoginPage extends StatelessWidget {
   const LoginPage({super.key});

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
                context.router.replace(const ProfileRoute());
              },
              child: const Text('Profile page'),
            ),
            ElevatedButton(
              onPressed: (){
                context.router.pop('matin');
              },
              child: const Text(' return'),
            ),
          ],
        ),
      ),
    );
  }
}
