import 'package:flutter/material.dart';
import 'presentation/view/doctor_module/doctor_home.dart';
import 'presentation/view/splash_screen/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DoctorHome());
  }
}
