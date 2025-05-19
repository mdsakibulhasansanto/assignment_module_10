


import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(80);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.themeColor,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
        )
      ],
      leading: IconButton(onPressed: (){}, icon:Icon(Icons.menu,color: Colors.white,)),
      title: const Text("Assignment ",style:TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
      ),),
      centerTitle: false,
    );
  }
}

