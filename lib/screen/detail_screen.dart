import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello, $makanan",
            ),
            Text(
              "Hello, $minuman",
            ),
            Text(
              "Hello, $dessert",
            ),
          ],
        ),
      ),
    );
  }
}
