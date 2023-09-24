import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_hello/Models/BicycleModels.dart';
import 'package:flutter_application_hello/Views/BikeCard.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController pageController = PageController(viewportFraction: 0.75);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      final position = pageController.page!.round();
      if (currentPage != position) {
        {
          setState(() {
            currentPage = position;
          });
        }
      }
    });
  }

  BicycleModels bicycleModels = BicycleModels();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bicycles')),
      backgroundColor: Colors.amber,
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 350, left: 30, right: 30, top: 30),
        child: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: pageController,
          itemCount: bicycleModels.allBicycleModels.length,
          itemBuilder: (context, index) {
            return BikeCard(
              active: index == currentPage,
              index: index,
              bicycleModel: bicycleModels.allBicycleModels[index],
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.skip_next),
      ),
    );
  }
}
