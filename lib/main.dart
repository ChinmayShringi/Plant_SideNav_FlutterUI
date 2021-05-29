import 'package:flutter/material.dart';
import 'package:plant2/widgets/home.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff67864A),
      ),
      home: HomePage(),
    );
  }
}

class Plant {
  final String title;
  final String discription;
  final String price;
  final String height;
  final String image;
  final String temprature;
  final String port;

  Plant({
    this.title,
    this.discription,
    this.price,
    this.height,
    this.image,
    this.temprature,
    this.port,
  });
}

List<Plant> plants = [
  Plant(
      title: "Turf Pot Plant",
      discription: "Small leaf plant for your home and office decoration",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image: "https://img.pngio.com/download-artificial"
          "-potted-plant-oregano-png-image-for-free-potted-plants-png-2000_2000.png",
      port: "Self Growing pot",
      price: "59.00"),
  Plant(
      title: "Scandinavian Plant",
      discription: "Small leaf plant for your home and office decoration",
      height: "40.0 cm to 50cm",
      temprature: "18c to 25c",
      image:
          "https://purepng.com/public/uploads/large/purepng.com-plantnatureplant-961524678664sj8de.png",
      port: "Self Growing pot",
      price: "59.00"),
];
