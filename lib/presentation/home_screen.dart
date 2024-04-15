import 'package:bmw_car/presentation/start_screen.dart';
import 'package:bmw_car/utils/text_utlis.dart';
import 'package:bmw_car/widgets/featutre_widget.dart';

import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/front_car.jpeg"), fit: BoxFit.fill),
        ),
        child: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Hero(
                tag: "Hello",
                child: Material(
                  type: MaterialType.transparency,
                  child: TextUtil(
                    text: "Hello Dev_73arner!",
                    size: 22,
                    weight: true,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Hero(
                  tag: "Model",
                  child: Material(
                      type: MaterialType.transparency,
                      child: TextUtil(text: "8 Series Gran Coupe"))),
              Spacer(),
              Spacer(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeatureWidget(
                      title: "24*",
                      icon: Icons.device_thermostat,
                      subTitle: "Temperature"),
                  FeatureWidget(
                      title: "100",
                      icon: Icons.account_tree,
                      subTitle: "Mileage"),
                  FeatureWidget(
                      title: "91%",
                      icon: Icons.electric_bolt,
                      subTitle: "Battery")
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const StartScreen()));
        },
        child: Hero(
          tag: "Start",
          child: Material(
            type: MaterialType.transparency,
            child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          offset: const Offset(5, 5),
                          blurRadius: 10),
                      BoxShadow(
                          color: Colors.white.withOpacity(0.3),
                          offset: const Offset(-3, -3),
                          blurRadius: 10)
                    ]),
                alignment: Alignment.center,
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtil(
                        text: "Engine".toUpperCase(),
                        color: Colors.grey,
                        size: 10,
                      ),
                      TextUtil(
                        text: "Start".toUpperCase(),
                        size: 14,
                        weight: true,
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
