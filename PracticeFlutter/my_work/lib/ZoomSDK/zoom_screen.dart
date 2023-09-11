// import 'dart:async';
// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:flutter_zoom_sdk/zoom_options.dart';
// import 'package:flutter_zoom_sdk/zoom_view.dart';

// class ZoomScreen extends StatefulWidget {
//   @override
//   _ZoomScreenState createState() => _ZoomScreenState();
// }

// class _ZoomScreenState extends State<ZoomScreen> {
//   TextEditingController meetingIdController = TextEditingController();
//   TextEditingController meetingPasswordController = TextEditingController();
//   bool _obscurePassword = true; // Added variable for password visibility

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: Text(
//           'Join Zoom Meeting',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(22.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 controller: meetingIdController,
//                 decoration: InputDecoration(
//                   labelText: 'Meeting ID',
//                   // prefixIcon: Icon(Icons.meeting_room),
//                 ),
//               ),
//               SizedBox(height: 10),
//               TextField(
//                 controller: meetingPasswordController,
//                 decoration: InputDecoration(
//                   labelText: 'Meeting Password',
//                   suffixIcon: GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         _obscurePassword = !_obscurePassword;
//                       });
//                     },
//                     child: Icon(
//                       _obscurePassword
//                           ? Icons.visibility
//                           : Icons.visibility_off,
//                     ),
//                   ),
//                 ),
//                 obscureText: _obscurePassword,
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () => joinMeeting(context),
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.black,
//                 ),
//                 child: Text(
//                   'Join Meeting',
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   joinMeeting(BuildContext context) {
//     bool _isMeetingEnded(String status) {
//       var result = false;

//       if (Platform.isAndroid)
//         result = status == "MEETING_STATUS_DISCONNECTING" ||
//             status == "MEETING_STATUS_FAILED";
//       else
//         result = status == "MEETING_STATUS_IDLE";

//       return result;
//     }

//     if (meetingIdController.text.isNotEmpty &&
//         meetingPasswordController.text.isNotEmpty) {
//       ZoomOptions zoomOptions = new ZoomOptions(
//         domain: "zoom.us",
//         appKey: "Svx4Cj9BT2qApX8U3Kbt9Q", //API KEY FROM ZOOM - Sdk API Key
//         appSecret:
//             "6B7xeSl8A3qayg0JRMuy4aGb94HyZ37v", //API SECRET FROM ZOOM - Sdk API Secret
//       );

//       var meetingOptions = new ZoomMeetingOptions(
//         userId: 'username',
//         meetingId: meetingIdController.text,
//         meetingPassword: meetingPasswordController.text,
//         disableDialIn: "true",
//         disableDrive: "true",
//         disableInvite: "true",
//         disableShare: "true",
//         disableTitlebar: "false",
//         viewOptions: "true",
//         noAudio: "false",
//         noDisconnectAudio: "false",
//       );

//       var zoom = ZoomView();
//       zoom.initZoom(zoomOptions).then((results) {
//         if (results[0] == 0) {
//           zoom.onMeetingStatus().listen((status) {
//             print("[Meeting Status Stream] : " + status[0] + " - " + status[1]);
//             if (_isMeetingEnded(status[0])) {
//               print("[Meeting Status] :- Ended");
//               var timer;
//               timer.cancel();
//             }
//           });
//           print("listen on event channel");
//           zoom.joinMeeting(meetingOptions).then((joinMeetingResult) {
//             var timer = Timer.periodic(new Duration(seconds: 2), (timer) {
//               zoom.meetingStatus(meetingOptions.meetingId!).then((status) {
//                 print("[Meeting Status Polling] : " +
//                     status[0] +
//                     " - " +
//                     status[1]);
//               });
//             });
//           });
//         }
//       }).catchError((error) {
//         print("[Error Generated] : " + error);
//       });
//     } else {
//       if (meetingIdController.text.isEmpty) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text("Enter a valid meeting id to continue."),
//         ));
//       } else if (meetingPasswordController.text.isEmpty) {
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           content: Text("Enter a meeting password to start."),
//         ));
//       }
//     }
//   }
// }
// flutter_zoom_sdk: ^1.1.0+4