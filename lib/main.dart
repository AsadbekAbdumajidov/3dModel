import 'package:flutter/material.dart';
import 'package:model3d/views/view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'View 3d Models',
      home: ViewModels(),
    );
  }
}
