import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

class AVideoCallScreen extends StatefulWidget {
  const AVideoCallScreen({super.key});

  @override
  State<AVideoCallScreen> createState() => _AVideoCallScreenState();
}

class _AVideoCallScreenState extends State<AVideoCallScreen> {

final  AgoraClient _Client = AgoraClient(agoraConnectionData: AgoraConnectionData(
    appId: "f8d611eda4eb4ab49e46bbf42af639f0",
    // tempToken: "007eJxTYLC9vHX3m89JE3/zHI/evL7vyKu3AZnHOPiq35kyRX9j/LZJgSHNIsXM0DA1JdEkNckkMcnEMtXELCkpzcQoMc3M2DLNwDHtT0pDICPDZuYoFkYGCATxWRnKMlNS8xkYAHmsItY",
   channelName: "video",

  ),
  enabledPermission: [
    Permission.camera,
    Permission.microphone
  ]
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Stack(children: [
          AgoraVideoViewer(client: _Client,),
        AgoraVideoButtons(client: _Client,)
        
        ]),
      )
      
    );
  }
}