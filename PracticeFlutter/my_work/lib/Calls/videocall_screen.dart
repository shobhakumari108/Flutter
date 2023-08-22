import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  bool isAudioMuted = false;
  bool isVideoMuted = false;
  bool isHandRaised = false;

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

  void toggleHandRaise() {
    setState(() {
      isHandRaised = !isHandRaised;
    });
  }

  Widget buildParticipantVideo() {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 221, 220, 220),
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
          left: 35,
          child: IconButton(
            icon: Icon(
              isAudioMuted ? Icons.mic_off_outlined : Icons.mic_outlined,
              color: isAudioMuted ? Colors.red : Colors.grey.shade700,
            ),
            onPressed: toggleAudioMute,
          ),
        ),
        Positioned(
          bottom: 1,
          right: 35,
          child: IconButton(
            icon: Icon(
              isVideoMuted
                  ? Icons.videocam_off_outlined
                  : Icons.videocam_outlined,
              color: isVideoMuted ? Colors.red : Colors.grey.shade700,
            ),
            onPressed: toggleVideoMute,
          ),
        ),
      ],
    );
  }

  Widget buildParticipantWithMicIcon() {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Color.fromARGB(255, 221, 220, 220),
            ),
            Positioned(
              bottom: 0,
              left: 65,
              child: IconButton(
                icon: Icon(
                  isAudioMuted ? Icons.mic_off_outlined : Icons.mic_outlined,
                  color: isAudioMuted ? Colors.red : Colors.grey.shade700,
                ),
                onPressed: toggleAudioMute,
              ),
            ),
          ],
        ),
        SizedBox(width: 8),
        Text(
          'Shobha',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.expand_more_outlined,
              color: Colors.black,
              size: 40,
            ),
            Text(
              'Leave quietly',
              style: TextStyle(fontSize: 16, color: Colors.red),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Text1',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
                          ],
                        ),
                        Text(
                          'Text2',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(
                      Icons.person_2_outlined,
                      color: Colors.grey.shade500,
                    ),
                    Text(
                      '10K',
                      style:
                          TextStyle(fontSize: 16, color: Colors.grey.shade500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildStackWithIcons(),
                    buildStackWithIcons(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildStackWithIcons(),
                    buildStackWithIcons(),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Participants',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildParticipantWithMicIcon(),
                    buildParticipantWithMicIcon(),
                    buildParticipantWithMicIcon(),
                    // Repeat as needed...
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildParticipantWithMicIcon(),
                    buildParticipantWithMicIcon(),
                    buildParticipantWithMicIcon(),
                    // Repeat as needed...
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // color: Color.fromARGB(255, 54, 54, 214),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 234, 247),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.message_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Add your message button action here
                          },
                        ),
                        Text(
                          'chat',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 234, 247),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.share_outlined,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Add your share button action here
                          },
                        ),
                        Text(
                          'share',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 234, 234, 247),
                borderRadius: BorderRadius.circular(50),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.back_hand_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Add your share button action here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
