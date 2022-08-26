import 'package:flutter/material.dart';
import 'package:wallace_corp/screens/cover_screen.dart';
import 'package:wallace_corp/screens/main_screen.dart';
import 'package:wallace_corp/screens/replicant_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallace App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Triakis",
        primarySwatch: Colors.purple,
      ),
      home: const CoverScreen(),
      routes: {
        "/main": (_) => const MainScreen(),
        "/replicant": (_) => const ReplicantScreen()
      },
    );
  }
}
