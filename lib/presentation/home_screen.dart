import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        surfaceTintColor: Colors.transparent,
        leading: const Icon(Icons.sort),
        title: SizedBox(
          height: 70,
          width: 70,
          child: Image.asset("assets/logo.webp"),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/front_car.jpeg"),fit: BoxFit.fill
          ),
        ),
       child: Column(
         children: [

         ],
       ),
      ),
    );
  }
}
