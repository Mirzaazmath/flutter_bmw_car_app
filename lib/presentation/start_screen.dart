import 'package:bmw_car/utils/show_up_animation.dart';
import 'package:bmw_car/utils/text_utlis.dart';
import 'package:bmw_car/widgets/app_bar_widget.dart';
import 'package:bmw_car/widgets/featutre_widget.dart';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const  AppBarWidget(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/side_car.jpeg"), fit: BoxFit.fill),
        ),
        child:  Padding(
          padding:const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              const  Column(
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
                ],
              ),
              Positioned(
                left: 0,
                  child: ShowUpAnimation(
                    delay: 100,
                    child: Column(
                                    children: [
                    const  Icon(Icons.keyboard_arrow_up_sharp,color: Colors.white,),
                    const   SizedBox(height: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade900,
                      child:const  Icon(Icons.electric_bolt,color: Colors.white,),
                    ),
                    const   SizedBox(height: 10,),
                    Container(
                      height: 220,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:  Colors.grey.shade900.withOpacity(0.8),
                      ),
                      padding:const  EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         const  TextUtil(text: "Last Ride",size: 14,weight: true,color: Colors.lightBlueAccent,),
                         const  SizedBox(height: 20,),
                          Image.asset("assets/route.png",color: Colors.white,),
                         const  FeatureWidget(
                              title: "100",
                              icon: Icons.car_rental_outlined,
                              subTitle: "Mileage"),
                        ],
                      ),
                    ),
                    const   SizedBox(height: 10,),
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade900,
                      child:const  Icon(Icons.device_thermostat,color: Colors.white,),
                    ),
                    const   SizedBox(height: 10,),
                    const  Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,),

                                    ],
                                  ),
                  ))
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: (){
         Navigator.pop(context);
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
                    color:Colors.black,
                    border: Border.all(color: Colors.green),
                    boxShadow: [
                      BoxShadow(
                          color:Colors.green.withOpacity(0.3),
                          offset: const Offset(5,5),
                          blurRadius: 10
                      ),
                      BoxShadow(
                          color: Colors.green.withOpacity(0.3),
                          offset: const Offset(-3,-3),
                          blurRadius: 10
                      )
                    ]
                ),
                alignment: Alignment.center,
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:Colors.black,
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtil(text: "Engine".toUpperCase(),color: Colors.grey,size: 10,),
                      TextUtil(text: "Stop".toUpperCase(),size: 14,weight: true,)
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    );
  }
}
