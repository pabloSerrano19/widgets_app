import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final IconData icon;
  final String link;


  const MenuItem({
    required this.subTitle, 
    required this.link,  
    required this.title,  
   required this.icon
  }
    );




}


final appMenuItems = <MenuItem>[
 const MenuItem(
subTitle: "Varios botones en flutter",
title: "Botones",
link:"/buttons",
icon:Icons.smart_button_outlined
),
const MenuItem(
title: "tarjetas", 
link: "/cards", 
subTitle: "un contenedor estilizado",
icon: Icons.credit_card)
];