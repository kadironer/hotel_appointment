import 'package:flutter/material.dart';
import 'package:hotel_appointment/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Appointment',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
