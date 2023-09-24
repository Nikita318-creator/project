import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_hello/Models/BicycleModels.dart';

class BikeCard extends StatelessWidget {
  const BikeCard({Key? key, this.active, this.index, this.bicycleModel})
      : super(key: key);

  final bool? active;
  final int? index;
  final BicycleModel? bicycleModel;

  @override
  Widget build(BuildContext context) {
    final blur = active! ? 16.0 : 0.0;
    final offset = active! ? 4.0 : 0.0;
    final top = active! ? 0.0 : 50.0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: EdgeInsets.only(
        top: top,
        bottom: 0,
        right: 15.5,
        left: 0,
      ),
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(32),
      //   color: bicycleModel!.startColor,
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.black87.withOpacity(0.1),
      //       blurRadius: blur,
      //       offset: Offset(0, offset),
      //     )
      //   ],
      // image: DecorationImage(
      //   fit: BoxFit.cover,
      //   image: AssetImage(bicycleModel!.imageName),
      // ),
      // ),
      child: Container(
        padding: const EdgeInsets.only(
          left: 24,
          right: 16,
          top: 10,
        ),
        height: 87,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            gradient: LinearGradient(
                colors: [
                  bicycleModel!.startColor!,
                  bicycleModel!.endColor!.withOpacity(0.3),
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                stops: const [0.1, 0.6])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Stack(children: [
                Image(
                  image: AssetImage(bicycleModel!.imageName),
                  width: 200,
                  height: 200,
                ),
                Positioned(
                  bottom: index == 0 ? 0 : 30,
                  left: 0,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.beach_access,
                      color: Colors.blue,
                      size: 36.0,
                    ),
                    label: Text('info'),
                  ),
                ),
              ]),
            ),
            SizedBox(height: 30),
            Text(
              'name: ${bicycleModel!.name}',
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'cost: ${bicycleModel!.cost}',
              style: const TextStyle(
                fontSize: 18,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
