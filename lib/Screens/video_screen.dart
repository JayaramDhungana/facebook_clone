import 'package:facebook_clone_up/provider_for_facebook/facebook_video_provider.dart';
import 'package:facebook_clone_up/reusable_widgets/videos_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//https://www.engadget.com/facebooks-redesigned-video-tab-emphasizes-reels-and-recommendations-150059104.html
class VideoScreen extends ConsumerStatefulWidget {
  const VideoScreen({super.key});

  @override
  ConsumerState<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends ConsumerState<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedIndexFromProvider =
        ref.watch(facebookVideoProvider).selectedIndex;
    return Scaffold(
      backgroundColor: Colors.white,
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
          //Video Text  bhanda Talako Menu haruko  Lagi
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    ref.read(facebookVideoProvider).changeIndex(1);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedIndexFromProvider == 1
                              ? Colors.blue.withOpacity(0.3)
                              : null,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "For You",
                        style: TextTheme.of(context).displayMedium,
                      ),
                    ),
                  ),
                ),
                //For you ko sakiyo aba live ko lagi
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    ref.read(facebookVideoProvider).changeIndex(2);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedIndexFromProvider == 2
                              ? Colors.blue.withOpacity(0.3)
                              : null,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Live",
                        style: TextTheme.of(context).displayMedium,
                      ),
                    ),
                  ),
                ),

                //Aba Arko ko lagi
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    ref.read(facebookVideoProvider).changeIndex(3);
                  },

                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedIndexFromProvider == 3
                              ? Colors.blue.withOpacity(0.3)
                              : null,
                      borderRadius: BorderRadius.circular(16),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Reels",
                        style: TextTheme.of(context).displayMedium,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    ref.read(facebookVideoProvider).changeIndex(4);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedIndexFromProvider == 4
                              ? Colors.blue.withOpacity(0.3)
                              : null,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Music",
                        style: TextTheme.of(context).displayMedium,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {
                    ref.read(facebookVideoProvider).changeIndex(5);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color:
                          selectedIndexFromProvider == 5
                              ? Colors.blue.withOpacity(0.3)
                              : null,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Following",
                        style: TextTheme.of(context).displayMedium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Bichako Khali Thauko ho
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(158, 158, 158, 1),
          ),
          Container(
            color: Colors.white,
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: videoWidget(
              imageLocation: "assets/mahesh_babu_profile_2.png",

              name: "Mahesh Babu",
              timeAgo: "12d",
              status: "Learning Flutter",
              thumbnail: Image.asset("assets/mahesh_babu_profile_2.png"),
              likers: "100M",
              commentrs: "420K",
            ),
          ),
        ],
      ),
    );
  }
}
