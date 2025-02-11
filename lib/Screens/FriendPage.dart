import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //first ko friends ra search wala button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    size: 35,
                  )
                ],
              ),
            ),
            //Second Line
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Suggetions",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 3),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Your Friends",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
            //Tespaxi yeuta Devider xa
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Frined request(55)",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ),
            FriendRequestHaru(
                "https://th.bing.com/th/id/R.e6d0e49fb1f39374bdb727329cd4b5c1?rik=pNV79JhdxWGIZA&pid=ImgRaw&r=0",
                "Khoi Ko Po Ho",
                40,
                "5W"),
            FriendRequestHaru(
                "https://th.bing.com/th/id/R.e6d0e49fb1f39374bdb727329cd4b5c1?rik=pNV79JhdxWGIZA&pid=ImgRaw&r=0",
                "Khoi Ko Po Ho",
                40,
                "5W"),
            FriendRequestHaru(
                "https://th.bing.com/th/id/R.e6d0e49fb1f39374bdb727329cd4b5c1?rik=pNV79JhdxWGIZA&pid=ImgRaw&r=0",
                "Khoi Ko Po Ho",
                40,
                "5W"),
            FriendRequestHaru(
                "https://th.bing.com/th/id/R.e6d0e49fb1f39374bdb727329cd4b5c1?rik=pNV79JhdxWGIZA&pid=ImgRaw&r=0",
                "Khoi Ko Po Ho",
                40,
                "5W"),
          ],
        ),
      ),
    );
  }

  Widget FriendRequestHaru(String image_url, String Name, int mutual_friends,
      String time_of_request) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, // Align items properly
        children: [
          CircleAvatar(
            radius: 30, // Set a proper size
            backgroundImage: NetworkImage(image_url),
          ),
          const SizedBox(width: 10), // Space between avatar and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Name, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(time_of_request, style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Text("$mutual_friends mutual friends",
                    style: TextStyle(color: Colors.grey)),
                const SizedBox(height: 5), // Space between text and buttons
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text("Confirm"),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text("Delete"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
