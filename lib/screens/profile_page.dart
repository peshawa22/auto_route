
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practise/routes/app_router.gr.dart';
@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                context.router.push(const HomeRoute());
              },
              child:  const Text('Home page,'),
            ),
          ],
        ),
      ),
    );
  }
}
