import 'package:flutter/material.dart';

Column videoWidget({
  required String imageLocation,
  required String name,
  required String timeAgo,
  required String status,
  required Image thumbnail,
  required String likers,
  required String commentrs,
}) {
  return Column(
    children: [
      //mathiko photo name follow ra three dot ko lagi matra
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
        child: Container(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("$imageLocation"),

                radius: 25,
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Aya Kimura"),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          height: 4,
                          width: 4,

                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("8h"),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 4,
                          bottom: 6,
                          right: 6,
                        ),
                        child: Container(
                          height: 4,
                          width: 4,

                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      Icon(Icons.public),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Icon(Icons.menu),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
