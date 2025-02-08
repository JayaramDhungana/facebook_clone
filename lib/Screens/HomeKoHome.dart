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
                    backgroundImage: NetworkImage(
                        "https://www.bing.com/th?id=OIP.52ZHdlcqmVv4DgeeFwDtOwHaFj&w=254&h=211&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                      Icon(
                        Icons.video_camera_back,
                        color: Colors.red,
                      ),
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
                      Icon(
                        Icons.photo_library_outlined,
                        color: Colors.green,
                      ),
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
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text("Live")
                    ],
                  ),
                ],
              ),
              Divider(
                height: 15,
                thickness: 8,
                color: Colors.grey[500],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.black)),
                        height: 190,
                        width: 130,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://www.bing.com/th?id=OIP.52ZHdlcqmVv4DgeeFwDtOwHaFj&w=254&h=211&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
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
                                ))
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
                            border: Border.all(color: Colors.black)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.SirAPFlcnG1PwvB7wWrUwwHaKY?rs=1&pid=ImgDetMain",
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
                                          color: Colors.blue, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.jAd2eZaR_nDjjwxAu55EMgHaIZ?w=1080&h=1224&rs=1&pid=ImgDetMain"),
                                  )),
                            )
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
                            border: Border.all(color: Colors.black)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.i0eTz7eFINwHIBOrMtPY_wHaLG?rs=1&pid=ImgDetMain",
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
                                          color: Colors.blue, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.aG7NT0UXgv7goEQ0qySstQHaE8?rs=1&pid=ImgDetMain"),
                                  )),
                            )
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
                            border: Border.all(color: Colors.black)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.SirAPFlcnG1PwvB7wWrUwwHaKY?rs=1&pid=ImgDetMain",
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
                                          color: Colors.blue, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.jAd2eZaR_nDjjwxAu55EMgHaIZ?w=1080&h=1224&rs=1&pid=ImgDetMain"),
                                  )),
                            )
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
                            border: Border.all(color: Colors.black)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.SirAPFlcnG1PwvB7wWrUwwHaKY?rs=1&pid=ImgDetMain",
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
                                          color: Colors.blue, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.jAd2eZaR_nDjjwxAu55EMgHaIZ?w=1080&h=1224&rs=1&pid=ImgDetMain"),
                                  )),
                            )
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
                            border: Border.all(color: Colors.black)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.SirAPFlcnG1PwvB7wWrUwwHaKY?rs=1&pid=ImgDetMain",
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
                                          color: Colors.blue, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.jAd2eZaR_nDjjwxAu55EMgHaIZ?w=1080&h=1224&rs=1&pid=ImgDetMain"),
                                  )),
                            )
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
                            border: Border.all(color: Colors.black)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.SirAPFlcnG1PwvB7wWrUwwHaKY?rs=1&pid=ImgDetMain",
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
                                          color: Colors.blue, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.jAd2eZaR_nDjjwxAu55EMgHaIZ?w=1080&h=1224&rs=1&pid=ImgDetMain"),
                                  )),
                            )
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
                            border: Border.all(color: Colors.black)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://th.bing.com/th/id/OIP.SirAPFlcnG1PwvB7wWrUwwHaKY?rs=1&pid=ImgDetMain",
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
                                          color: Colors.blue, width: 3)),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://th.bing.com/th/id/OIP.jAd2eZaR_nDjjwxAu55EMgHaIZ?w=1080&h=1224&rs=1&pid=ImgDetMain"),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 15,
                thickness: 8,
                color: Colors.grey[500],
              ),

              /**
               * Yaha bata chai Bastabik News Feed haru Hun Hai
               
               */

              //Pahilo News Feed
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.kaEBEyr5CQQ3G0R6euOwuwHaEd?rs=1&pid=ImgDetMain"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Samikshya Adhikari"),
                        Row(
                          children: [
                            Text("22 minutes ago"),
                            Icon(Icons.public)
                          ],
                        )
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
              Image.network(
                  "https://scontent.fktm6-1.fna.fbcdn.net/v/t39.30808-6/422665440_894204009167528_4925379261784803435_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=R0Al4JVx9L0Q7kNvgEjxcQC&_nc_oc=AdhwgvqUAHYZv3oiFffepMyFWchO9GLHGiwzx3cR56y8XAkIuSIbYhSrN5jsaY7e8Bd4ReP6j3eJtA4s6_Otx2iM&_nc_zt=23&_nc_ht=scontent.fktm6-1.fna&_nc_gid=A0fuIt-PSIA-XtdPgBH2kjs&oh=00_AYA5I4ValWvAqzUK9UmCuDuo5Nu0Gl1rDXUdEXV5EoJRBQ&oe=67AD3DDC"),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  Text("99K"),
                  Spacer(),
                  Text("30K Comments")
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [Icon(Icons.thumb_up), Text("Like")],
                  ),
                  Row(
                    children: [Icon(Icons.comment), Text("Comment")],
                  ),
                  Row(
                    children: [Icon(Icons.share), Text("Share")],
                  )
                ],
              ),
              Divider(),

              //Dosro  News Feed
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.B4f1x2kKBdSkhylzSxvC5wHaHa?rs=1&pid=ImgDetMain"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Elina Chauhan"),
                        Row(
                          children: [
                            Text("53 minutes ago"),
                            Icon(Icons.public)
                          ],
                        )
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
              Image.network(
                  "https://i.pinimg.com/736x/bd/b2/37/bdb237d06abe0b5349cad66d220d3006.jpg"),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                  Text("60K"),
                  Spacer(),
                  Text("4K Comments")
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [Icon(Icons.thumb_up), Text("Like")],
                  ),
                  Row(
                    children: [Icon(Icons.comment), Text("Comment")],
                  ),
                  Row(
                    children: [Icon(Icons.share), Text("Share")],
                  )
                ],
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
