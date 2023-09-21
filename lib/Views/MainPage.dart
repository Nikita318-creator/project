import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_hello/Models/BicycleModels.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  BicycleModels bicycleModels = BicycleModels();

// USE IT instead and models from index, not hardcode!
// child: PageView.builder(
//             physics: const BouncingScrollPhysics(),
//             controller: pageController,
//             itemCount: recipes.length,
//             itemBuilder: (context, index) {
//               return RecipeCard(
//                 active: index == currentPage,
//                 index: index,
//                 recipe: recipes[index],
//               );
//             },
//           ),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bicycles')),
      backgroundColor: Colors.amber,
      body: Padding(
        padding:
            const EdgeInsets.only(bottom: 350, left: 30, right: 30, top: 30),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            // BIKE1
            Container(
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
                        bicycleModels.allBicycleModels[0].startColor!,
                        bicycleModels.allBicycleModels[0].endColor!
                            .withOpacity(0.3),
                      ],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      stops: const [0.1, 0.6])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage(
                          bicycleModels.allBicycleModels[0].imageName),
                      width: 200,
                      height: 200,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'name: ${bicycleModels.allBicycleModels[0].name}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'cost: ${bicycleModels.allBicycleModels[0].cost}',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: 15,
            ),

            // BIKE2
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image:
                      AssetImage(bicycleModels.allBicycleModels[1].imageName),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 30),
                Text(
                  'name: ${bicycleModels.allBicycleModels[1].name}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'cost: ${bicycleModels.allBicycleModels[1].cost}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(
              width: 15,
            ),

            // BIKE3
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image:
                      AssetImage(bicycleModels.allBicycleModels[2].imageName),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 30),
                Text(
                  'name: ${bicycleModels.allBicycleModels[2].name}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'cost: ${bicycleModels.allBicycleModels[2].cost}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),

            SizedBox(
              width: 15,
            ),

            // BIKE4
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image:
                      AssetImage(bicycleModels.allBicycleModels[3].imageName),
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 30),
                Text(
                  'name: ${bicycleModels.allBicycleModels[3].name}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'cost: ${bicycleModels.allBicycleModels[3].cost}',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
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
