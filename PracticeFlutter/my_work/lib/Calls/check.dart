import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoCallRoom extends StatefulWidget {
  @override
  _VideoCallRoomState createState() => _VideoCallRoomState();
}

class _VideoCallRoomState extends State<VideoCallRoom> {
  bool isAudioMuted = false;
  bool isVideoMuted = false;

  void toggleAudioMute() {
    setState(() {
      isAudioMuted = !isAudioMuted;
    });
  }

  void toggleVideoMute() {
    setState(() {
      isVideoMuted = !isVideoMuted;
    });
  }

  Widget buildParticipantVideo() {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      // Your participant video widget goes here
    );
  }

  Widget buildStackWithIcons() {
    return Stack(
      children: [
        buildParticipantVideo(),
        Positioned(
          bottom: 1,
          left: 30,
          child: IconButton(
            icon: Icon(
              isAudioMuted ? Icons.mic_off : Icons.mic,
              color: isAudioMuted ? Colors.red : Colors.black,
            ),
            onPressed: toggleAudioMute,
          ),
        ),
        Positioned(
          bottom: 1,
          right: 30,
          child: IconButton(
            icon: Icon(
              isVideoMuted ? Icons.videocam_off : Icons.videocam,
              color: isVideoMuted ? Colors.red : Colors.black,
            ),
            onPressed: toggleVideoMute,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video Call Room')),
      body: Center(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two items per row
          ),
          itemCount: 4, // Total number of rooms
          itemBuilder: (context, index) {
            return buildStackWithIcons();
          },
        ),
      ),
    );
  }
}



//  Row(
//               children: [
//                 Container(
//                   width: 150,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.blue, // Background color
//                     borderRadius: BorderRadius.circular(5), // Rounded corners
//                   ),
//                   child: TextButton(
//                     onPressed: () {
//                       // Add your reply button action here
//                     },
//                     child: Text(
//                       'Reply',
//                       style: TextStyle(
//                         color: Colors.white, // Text color
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: 16), // Add some spacing between the buttons
//                 Container(
//                   width: 150,
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.green, // Background color
//                     borderRadius: BorderRadius.circular(5), // Rounded corners
//                   ),
//                   child: TextButton(
//                     onPressed: () {
//                       // Add your letter button action here
//                     },
//                     child: Text(
//                       'Letter',
//                       style: TextStyle(
//                         color: Colors.white, // Text color
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             )