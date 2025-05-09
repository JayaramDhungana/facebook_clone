import 'package:facebook_clone_up/Screens/FriendPage.dart';
import 'package:facebook_clone_up/Screens/HomeKoHome.dart';
// import 'package:facebook_clone_up/crop_image/crop_image2.dart';
import 'package:facebook_clone_up/other_practicing/crop_image/image_crop.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "facebook",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                debugPrint("Pressed On Icon");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImageCropperScreen()),
                );
              },
              child: _buildIcon(Icons.add),
            ),
            SizedBox(width: 5),
            _buildIcon(Icons.search_rounded),
            SizedBox(width: 5),
            _buildIcon(Icons.chat),
          ],
        ),
        bottom: TabBar(
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          controller: _tabController,
          tabs: [
            Icon(Icons.home),
            Icon(Icons.people),
            Icon(Icons.ondemand_video_outlined),
            Icon(Icons.house),
            Icon(Icons.notifications),
            Icon(Icons.menu),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomekoHome(),
          FriendsPage(),
          Text("This is reels"),
          Text("This is Market Plaxe"),
          Text("This is Notification"),
          Text("This is Menu"),
        ],
      ),
    );
  }

  //required Function

  Widget _buildIcon(IconData icon) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
      padding: EdgeInsets.all(8),
      child: Icon(icon, color: Colors.black, size: 15),
    );
  }
}
