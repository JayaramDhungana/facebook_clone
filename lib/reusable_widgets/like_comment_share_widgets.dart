import 'package:flutter/material.dart';

Padding likeCommentShareWidget({
  required String likeCount,
  required String commentCount
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
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
            Text(likeCount),
            Spacer(),
            Text("$commentCount Comments"),
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
      ],
    ),
  );
}
