import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class ViewModels extends StatefulWidget {
  const ViewModels({Key? key}) : super(key: key);

  @override
  State<ViewModels> createState() => _ViewModelsState();
}

class _ViewModelsState extends State<ViewModels> {
  // adding necessary objects
  late Object earth;
  late Object astro;
  late Object material;

  @override
  void initState() {
    earth = Object(fileName: "assets/jet/goodNeighbor/model.obj");
    astro = Object(fileName: "assets/jet/ms_Gundam/model.obj");
    material = Object(fileName: "assets/jet/Robo/model.obj");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      // creating appbar
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "3D Objects in Flutter",
          style: TextStyle(
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
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
            Expanded(
              // adding the cube function to
              // create the scene of our object
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(material);
                  scene.camera.zoom = 10;
                },
              ),
            ),

            // adding the earth object
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(earth);
                  scene.camera.zoom = 10;
                },
              ),
            ),

            // adding the astro object
            Expanded(
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(astro);
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
