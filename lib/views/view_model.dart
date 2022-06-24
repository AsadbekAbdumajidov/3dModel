import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:model3d/core/constants/models_path.dart';
import 'package:model3d/core/widgets/app_bar_widget.dart';

class ViewModels extends StatefulWidget {
  const ViewModels({Key? key}) : super(key: key);

  @override
  State<ViewModels> createState() => _ViewModelsState();
}

class _ViewModelsState extends State<ViewModels> {
  // adding necessary objects
  late Object robo;
  late Object animal;
  late Object house;
  @override
  void initState() {
    robo = Object(fileName: ModelsPath.instance.robo);
    animal = Object(fileName: ModelsPath.instance.zebra);
    house = Object(fileName: ModelsPath.instance.house);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // providing linear gradient to the
        // background with two colours
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.greenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 100),
              child: AppBarWidget(title: "3D Objects in Flutter"),
            ),
            Expanded(
              flex: 2,
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(animal);
                  scene.camera.zoom = 10;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
