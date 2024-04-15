import 'package:bmw_car/utils/text_utlis.dart';
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
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/front_car.jpeg"),fit: BoxFit.fill
          ),
        ),
       child:  Padding(
         padding:  const EdgeInsets.all(20),
         child: Column(
           children: [
             const TextUtil(text: "Hello Dev_73arner!",size: 22,weight: true,),
             const  SizedBox(height: 20,),
             const   TextUtil(text: "8 Series Gran Coupe"),
             const  Spacer(),
             Row(
               children: [

               ],
             )
           ],
         ),
       ),
      ),
    );
  }
}
