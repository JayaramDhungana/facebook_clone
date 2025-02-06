import 'package:flutter/material.dart';

class HomekoHome extends StatelessWidget {
  const HomekoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage:
                      NetworkImage("https://via.placeholder.com/150"),
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
            Row()
          ],
        ),
      ),
    );
  }
}
