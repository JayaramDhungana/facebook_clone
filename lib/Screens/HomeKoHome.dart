import 'package:flutter/material.dart';

class HomekoHome extends StatelessWidget {
  const HomekoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage(
                      "assets/mahesh_babu_profile.png",
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "What's on your mind ?",
                        hintStyle: TextStyle(fontSize: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.video_camera_back, color: Colors.red),
                      Text("Live"),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey[400],
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Row(
                    children: [
                      Icon(Icons.photo_library_outlined, color: Colors.green),
                      Text("Photo"),
                    ],
                  ),
                  Container(
                    height: 20,
                    width: 2,
                    color: Colors.grey[400],
                    margin: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      Text("Live"),
                    ],
                  ),
                ],
              ),
              Divider(height: 15, thickness: 8, color: Colors.grey[500]),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        height: 190,
                        width: 130,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/mahesh_babu_profile.png",
                                width: 130,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "Create Story",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Positioned(
                              top: 100,
                              left: 48,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Dosro Story ko UI
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/mahesh_babu_story.png",
                                height: 300,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              left: 7,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/mahesh_babu_profile_2.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Tesro UI
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/image.png",
                                height: 300,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              left: 7,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/image.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Next Story
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/image.png",
                                height: 300,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              left: 7,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/image.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Next Story
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/image.png",
                                height: 300,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              left: 7,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/image.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Next Story
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/image.png",
                                height: 300,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              left: 7,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/image.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Next Story
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/image.png",
                                height: 300,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              left: 7,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/image.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Next Stroy
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        height: 190,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                "assets/image.png",
                                height: 300,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 2,
                              left: 7,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 3,
                                  ),
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                    "assets/image.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(height: 15, thickness: 8, color: Colors.grey[500]),

              /**
               * Yaha bata chai Bastabik News Feed haru Hun Hai
               
               */

              //Pahilo News Feed
              Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/profile1.png"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pradip Khadka"),
                        Row(
                          children: [
                            Text("22 minutes ago"),
                            Icon(Icons.public),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.menu),
                  Icon(Icons.close),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  मेरो दुस्मन छन् धेरै \n  दुश्मन हेरेको हेरै ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Image.asset("assets/image.png"),
              SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.thumb_up, color: Colors.white, size: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.favorite, color: Colors.white, size: 15),
                  ),
                  Text("99K"),
                  Spacer(),
                  Text("30K Comments"),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [Icon(Icons.thumb_up), Text("Like")]),
                  Row(children: [Icon(Icons.comment), Text("Comment")]),
                  Row(children: [Icon(Icons.share), Text("Share")]),
                ],
              ),
              SizedBox(height: 10),
              //Bichako Khali Thauko ho
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(158, 158, 158, 1),
              ),

              //Dosro  News Feed
              Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(backgroundImage: AssetImage("assets/image.png")),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Elina Chauhan"),
                        Row(
                          children: [
                            Text("53 minutes ago"),
                            Icon(Icons.public),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.menu),
                  Icon(Icons.close),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  तिमिले धोका दियौ भने माकसम \n कट्टा हान्दिन्छु मैले कट्टा हान्दिन्छु",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Image.asset("assets/image.png"),
              SizedBox(height: 5),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.thumb_up, color: Colors.white, size: 15),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(Icons.favorite, color: Colors.white, size: 15),
                  ),
                  Text("60K"),
                  Spacer(),
                  Text("4K Comments"),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [Icon(Icons.thumb_up), Text("Like")]),
                  Row(children: [Icon(Icons.comment), Text("Comment")]),
                  Row(children: [Icon(Icons.share), Text("Share")]),
                ],
              ),
              SizedBox(height: 10),
              //Bichako Khali Thauko ho
              Container(
                height: 10,
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(158, 158, 158, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
