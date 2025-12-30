import 'package:flutter/material.dart ';
Widget facebookPost({
  required String profileImage,
  required String username,
  required String time,
  required String postText,
  required String postImage,
}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 4,
          spreadRadius: 1,
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ─────────── Profile Row ───────────
        Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(profileImage),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            )
          ],
        ),

        SizedBox(height: 10),

        // ─────────── Post Text ───────────
        Text(
          postText,
          style: TextStyle(fontSize: 15),
        ),

        SizedBox(height: 10),

        // ─────────── Post Image ───────────
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            postImage,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),

        SizedBox(height: 10),

        // ─────────── Like / Comment / Share Row ───────────
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              
              children: [

  
              
              
                
                IconButton(icon:const Icon(Icons.thumb_up_alt_outlined, size: 22, color: Colors.grey, ),onPressed: () => {},),
                
                Text("Like"),
                SizedBox(width: 50),
                 IconButton(icon:const Icon(Icons.comment_outlined, size: 22, color: Colors.grey), onPressed: () => {},),
                
                Text("Comment"),
                SizedBox(width: 50),
                  IconButton(icon:const Icon(Icons.share_outlined, size: 22, color: Colors.grey),onPressed: () => {},),
    
                Text("Share"),
              ],
            ),
            
          ],
        ),
      ],
    ),
  );
}
