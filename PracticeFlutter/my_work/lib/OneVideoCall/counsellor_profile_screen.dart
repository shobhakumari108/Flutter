import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; 

class CounsellorProfile extends StatefulWidget {
  const CounsellorProfile({Key? key}) : super(key: key);

  @override
  _CounsellorProfileState createState() => _CounsellorProfileState();
}

class _CounsellorProfileState extends State<CounsellorProfile> {
  final List<ChatMessage> _messages = [];
  final TextEditingController _textEditingController = TextEditingController();

 
  final String _counsellorName = "John Doe";
  final String _counsellorBio = "Licensed Therapist";
  final String _profileImageUrl = "assets/profile.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Profile Section
            _buildProfileCard(),
            Expanded(
              child: _buildChatSection(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(_profileImageUrl),
                    radius: 20.0,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _counsellorName,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        _counsellorBio,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.call_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                     
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.videocam_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                     
                    },
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChatSection() {
    return Row(
      children: [
        Expanded(
          flex: 2, 
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              
            ),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      final message = _messages[index];
                      return ChatBubble(
                        message: message.message,
                        isMe: message.isMe,
                      );
                    },
                  ),
                ),
                _buildMessageInputField(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMessageInputField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.photo_camera_outlined),
            onPressed: _takePhoto,
          ),
          Expanded(
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Type a message...',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(50.0), 
                ),
              ),
              
            ),
          ),
          IconButton(
            icon: Icon(Icons.photo_outlined),
            onPressed: _pickImage,
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }

  void _takePhoto() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      
      _handleImage(pickedFile.path);
    }
  }

  void _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
    
      _handleImage(pickedFile.path);
    }
  }

  void _handleImage(String imagePath) {
   
    

    setState(() {
      _messages.add(ChatMessage(
          imagePath, true)); 
    });
  }

  void _sendMessage() {
    final messageText = _textEditingController.text;
    if (messageText.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(messageText, true));
        _textEditingController.clear();
      });
    }
  }
}

class ChatMessage {
  final String message;
  final bool isMe;

  ChatMessage(this.message, this.isMe);
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  ChatBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isMe ? Colors.black : Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
