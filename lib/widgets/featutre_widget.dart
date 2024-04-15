import 'package:flutter/material.dart';

import '../utils/text_utlis.dart';
class FeatureWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final IconData icon;
  const FeatureWidget({super.key,required this.title,required this.icon,required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      CircleAvatar(
          backgroundColor: Colors.grey.shade900,
          child: Icon(icon,color: Colors.white,)
      ),
      const  SizedBox(height: 5,),
      TextUtil(text: title,weight: true,size: 24,),
      TextUtil(text: subTitle.toUpperCase(),weight: true,color: Colors.grey,size: 11,),

    ],);
  }
}
