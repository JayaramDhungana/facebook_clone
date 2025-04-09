

import 'package:flutter/material.dart';

class ButtomNavBarContainer extends StatefulWidget {
  const ButtomNavBarContainer({super.key});

  @override
  State<ButtomNavBarContainer> createState() => _ButtomNavBarContainerState();
}

class _ButtomNavBarContainerState extends State<ButtomNavBarContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Container( 
            height: 60,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.home),
                
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                IconButton(onPressed: (){}, icon: Icon(Icons.people))

              ],
            ),

          )
        ],
      )
    );
  }
}