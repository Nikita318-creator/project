import 'package:flutter/material.dart';

class BicycleModel {
  BicycleModel({
    this.name = '',
    this.cost = '',
    this.imageName = '',
    this.startColor,
    this.endColor,
  });

  String name;
  String cost;
  String imageName;
  Color? startColor;
  Color? endColor;
}

class BicycleModels {
  var allBicycleModels = [
    BicycleModel(
      name: 'bike1',
      cost: '1200',
      imageName: 'assets/bike1.jpeg',
      startColor: Color.fromARGB(255, 5, 5, 5),
      endColor: const Color(0xFFF58B5A),
    ),
    BicycleModel(
      name: 'bike2_blac',
      cost: '444',
      imageName: 'assets/bike2.jpeg',
      startColor: const Color(0xFFF37552),
      endColor: const Color(0xFFF58B5A),
    ),
    BicycleModel(
      name: 'bike_666',
      cost: '700',
      imageName: 'assets/bike3.jpeg',
      startColor: const Color(0xFFF37552),
      endColor: const Color(0xFFF58B5A),
    ),
    BicycleModel(
      name: 'bike_junior',
      cost: '5050',
      imageName: 'assets/bike4.jpeg',
      startColor: const Color(0xFFF37552),
      endColor: const Color(0xFFF58B5A),
    ),
  ];
}
