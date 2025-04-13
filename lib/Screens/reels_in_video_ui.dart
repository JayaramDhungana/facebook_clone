import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Padding reelsInVideoUI({required BuildContext context}) {
  List<String> imageLocations = [
    "assets/ram1.jpg",
    "assets/ram2.jpg",
    "assets/ram3.jpg",
    "assets/ram1.jpg",
    "assets/ram2.jpg",
    "assets/ram3.jpg",
  ];
  return Padding(
    padding: EdgeInsets.all(9),
    child: SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Image(
                image: AssetImage("assets/reels_icon.dart.jpg"),
                height: 20,
              ),
              Text(
                "Reels",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 300,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageLocations.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  margin: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      imageLocations[index],
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
