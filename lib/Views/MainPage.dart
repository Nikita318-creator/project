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
      backgroundColor: const Color.fromARGB(255, 7, 255, 176),
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
        onPressed: () {
          if (currentPage != bicycleModels.allBicycleModels.length - 1) {
            pageController.animateToPage(
              bicycleModels.allBicycleModels.length - 1,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          } else {
            pageController.animateToPage(
              0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            );
          }
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.skip_next),
      ),
    );
  }
}
