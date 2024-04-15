import 'package:flutter/material.dart';
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});
  @override
  Size get preferredSize =>const  Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.black,
      surfaceTintColor: Colors.transparent,
      leading:const  Hero(
          tag: "Icon",
          child: Material(
              type: MaterialType.transparency,
              child:  Icon(Icons.sort))),
      title: Hero(
        tag: "logo",
        child: Material(
          type: MaterialType.transparency,
          child: SizedBox(
            height: 70,
            width: 70,
            child: Image.asset("assets/logo.webp"),
          ),
        ),
      ),
    );
  }
}
