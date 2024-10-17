import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget{
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("buttons Screen"),
     ),
     body: Wrap(
      spacing: 10,
      children: [
        IconButton(onPressed: (){}, icon:  Icon(Icons.add),
       
        ),
      ],

     ), 
    );
    
    
    }

}