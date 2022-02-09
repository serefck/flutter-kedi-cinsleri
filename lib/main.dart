import 'package:flutter/material.dart';
import 'listecins.dart';


void main() {
  runApp(MaterialApp (
    title: "Kedi Cinsleri Uygulaması",
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    home: Scaffold (
      body: jsonCins(),
    ),
  ));
}

