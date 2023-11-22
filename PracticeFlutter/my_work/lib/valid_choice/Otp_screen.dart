import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  final String phoneNumber;
  const OTPScreen({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late List<List<dynamic>> keys;
  late String amount;
  final TextEditingController codeController = TextEditingController();
  bool isLoading = false;
  bool isloadafteropt = false;

  @override
  void initState() {
    super.initState();
    keys = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      [
        const Spacer(),
        '0',
        const Icon(
          Icons.backspace,
          color: Color.fromRGBO(18, 69, 49, 1.0),
        )
      ],
    ];
    amount = '';
  }

  onKeyTap(val) {
    setState(() {
      amount = amount + val;
    });
  }

  onBackspacePress() {
    if (amount.isEmpty) {
      return;
    }

    setState(() {
      amount = amount.substring(0, amount.length - 1);
    });
  }

  renderKeyboard() {
    return keys
        .map(
          (x) => Row(
            children: x.map(
              (y) {
                return Expanded(
                  child: KeyboardKey(
                    label: y,
                    value: y,
                    onTap: (val) {
                      if (val is Spacer) {
                        return;
                      } else if (val is Widget) {
                        onBackspacePress();
                      } else if (amount.length >= 6) {
                        
                      } else {
                        onKeyTap(val);
                      }
                    },
                  ),
                );
              },
            ).toList(),
          ),
        )
        .toList();
  }

  renderAmount(Size size) {
    List<String> otpBox = [];

    if (amount.isNotEmpty) {
      otpBox = amount.split('');
    }

    return Expanded(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("We have sent OTP on your phone number"),
            Text(widget.phoneNumber),
            const SizedBox(height: 30),
            SizedBox(
              height: size.height * .2,
              child: Center(
                child: otpBox.isEmpty
                    ? Text(
                        "Enter your OTP",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(198, 63, 68, 1.0),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: otpBox
                            .map(
                              (e) => SizedBox(
                                height: 50,
                                width: 50,
                                child: Card(
                                  color: Color.fromRGBO(18, 69, 49,
                                      1.0), // Adjust color as needed
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                    child: Text(
                                      e,
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )

                            .toList(),
                      ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Don't receive an OTP? "),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isLoading = true;
                    });
                    
                  },
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(
                          18, 69, 49, 1.0), 
                          // Adjust color as needed
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Enter Verification Code",
          style: TextStyle(
            color: Color.fromRGBO(18, 69, 49, 1.0), // Set the color here
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Column(
              children: [
                renderAmount(size),
                ...renderKeyboard(),
                const SizedBox(height: 10),
                // This is the submit button
                Container(
                  height: 30,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(20), // Set the border radius here
                    color: Color.fromRGBO(18, 69, 49, 1.0),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your submit logic here
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.transparent, // Make the button transparent
                      elevation: 0, // Remove the button shadow
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (isloadafteropt)
            Positioned.fill(
              child: Container(
                color: Color.fromRGBO(18, 69, 49, 1.0),
              ),
            ),
        ],
      ),
    );
  }
}

class KeyboardKey extends StatelessWidget {
  final dynamic label;
  final dynamic value;
  final ValueSetter<dynamic> onTap;

  const KeyboardKey({
    Key? key,
    required this.label,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(value);
      },
      child: AspectRatio(
        aspectRatio: 2,
        child: Center(
          child: label is Widget
              ? label
              : Text(
                  label,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
