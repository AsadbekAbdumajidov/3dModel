import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';
import 'package:model3d/core/constants/models_path.dart';
import 'package:model3d/core/data/data.dart';
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
  late Object cow;
  late Object littleFish;
  late Object littleMan;
  late Object car;
  late Object policeCar;
  late Object ballPark;
  late Object spermWhale;
  late Object finback;
  late Object elephant;
  late Object penguin;
  late Object penguins;
  late Object pepermint;
  late Object viking;
  late Object wasp;
  late Object butterfly;
  late Object monkey;
  late Object velociRobot;
  late Object turtle;
  late Object robotAndSnail;
  late Object toyRobot;
  late Object skunk;
  late Object deer;
  late List models;
  @override
  void initState() {
    robo = Object(fileName: ModelsPath.instance.robo);
    animal = Object(fileName: ModelsPath.instance.zebra);
    house = Object(fileName: ModelsPath.instance.house);
    cow = Object(fileName: ModelsPath.instance.cow);
    littleFish = Object(fileName: ModelsPath.instance.littleFish);
    littleMan = Object(fileName: ModelsPath.instance.littleMan);
    car = Object(fileName: ModelsPath.instance.car);
    policeCar = Object(fileName: ModelsPath.instance.policeCar);
    ballPark = Object(fileName: ModelsPath.instance.ballPark);
    spermWhale = Object(fileName: ModelsPath.instance.spermWhale);
    finback = Object(fileName: ModelsPath.instance.finback);
    elephant = Object(fileName: ModelsPath.instance.elephant);
    penguin = Object(fileName: ModelsPath.instance.penguin);
    penguins = Object(fileName: ModelsPath.instance.penguins);
    pepermint = Object(fileName: ModelsPath.instance.pepermint);
    viking = Object(fileName: ModelsPath.instance.viking);
    wasp = Object(fileName: ModelsPath.instance.wasp);
    butterfly = Object(fileName: ModelsPath.instance.butterfly);
    monkey = Object(fileName: ModelsPath.instance.monkey);
    velociRobot = Object(fileName: ModelsPath.instance.velociRobot);
    turtle = Object(fileName: ModelsPath.instance.turtle);
    robotAndSnail = Object(fileName: ModelsPath.instance.robotAndSnail);
    toyRobot = Object(fileName: ModelsPath.instance.toyRobot);
    skunk = Object(fileName: ModelsPath.instance.skunk);
    deer = Object(fileName: ModelsPath.instance.deer);

    models = [
      robo,
      animal,
      house,
      cow,
      littleFish,
      littleMan,
      car,
      policeCar,
      ballPark,
      spermWhale,
      finback,
      elephant,
      penguin,
      penguins,
      pepermint,
      viking,
      wasp,
      butterfly,
      monkey,
      velociRobot,
      turtle,
      robotAndSnail,
      toyRobot,
      skunk,
      deer,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;
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
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 50),
              child: AppBarWidget(title: title[index]),
            ),
            Expanded(
              flex: 2,
              child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(models[index]);
                  scene.camera.zoom = 8;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
