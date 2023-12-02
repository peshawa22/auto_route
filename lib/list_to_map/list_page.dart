import 'package:flutter/material.dart';

import 'list.dart';

class ListPage extends StatelessWidget {
   ListPage({super.key});
  List<Car>cars=[
    Car('benz', 'gClass', 25)
  ];

  @override
  Widget build(BuildContext context) {
    final allCars = cars.map((cars) {
      final carName = cars.name.toString();
      final carModel= cars.model.toString();
      final carAge= cars.age.toString();
      return Row(
        children: [Text(carName),Text(carModel),Text(carAge)],
      );
    }).toList();
    return  Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...allCars,
        ],
      ),),
    );
  }
}
