
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:practise/routes/app_router.gr.dart';
@RoutePage()
class HomePage extends StatelessWidget {
   const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                context.router.push(const LoginRoute(),);

              },
              child: const Text('login page'),
            ),
          ],
        ),
      ),
    );
  }
}
