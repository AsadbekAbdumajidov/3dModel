import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:model3d/core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return appMaterial();
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) =>
      const ClampingScrollPhysics();
}

appMaterial() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Aion.brend',
    onGenerateRoute: Routes.instance.generateRoue,
    supportedLocales: const [
      Locale('en'),
      Locale('ru'),
      Locale('fr'), 
    ],
    builder: (context, child) {
      return ScrollConfiguration(
        behavior: MyBehavior(),
        child: child!,
      );
    },
    initialRoute: "/home",
  );
}
