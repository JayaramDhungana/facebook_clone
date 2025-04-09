import 'package:flutter/material.dart';

//https://www.engadget.com/facebooks-redesigned-video-tab-emphasizes-reels-and-recommendations-150059104.html
class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Text("Video", style: TextTheme.of(context).displayLarge),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 4),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
          //Video bhanda Talako Lagi
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("For You", style: TextTheme.of(context).displayMedium),
                Text("Live", style: TextTheme.of(context).displayMedium),
                Text("Reels", style: TextTheme.of(context).displayMedium),
                Text("Music", style: TextTheme.of(context).displayMedium),
                Text("Following", style: TextTheme.of(context).displayMedium),
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            height: 10,
            width: MediaQuery.of(context).size.width,
          ),
          
        ],
      ),
    );
  }
}
