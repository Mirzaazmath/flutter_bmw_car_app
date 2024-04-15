import 'package:bmw_car/utils/text_utlis.dart';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/side_car.jpeg"), fit: BoxFit.fill),
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


            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: (){
          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ChargingScreen()));
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
