import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({super.key});

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController countryCodeController = TextEditingController();
  final countryPicker = const FlCountryCodePicker();
  final _formKey = GlobalKey<FormState>();
  var countrycode = "+91";

  @override
  void initState() {
    super.initState();
    countryCodeController.text = "(+91) India";
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Container(
                    // width: 200,
                    // color: Color.fromRGBO(198, 63, 68, 1.0),
                    color: Color.fromRGBO(133, 209, 178, 1),
                    // width: size.width * .55, // Set the width of the container
                    // height: 80,
                    // color: Colors.white,
                    alignment: Alignment.center,
                    child: Container(
                      width: size.width * .55,
                      child: Image.asset(
                        'assets/website-logo-1.webp', // Replace with actual image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const Expanded(flex: 3, child: SizedBox())
              ],
            ),
          ),
          Positioned(
            bottom: size.width * .1,
            left: 20,
            right: 20,
            child: Form(
              key: _formKey,
              child: SizedBox(
                height: size.height * .5,
                child: Stack(
                  children: [
                    SizedBox(
                      height: size.height * .45,
                      child: Card(
                        elevation: 2,
                        color: Color.fromRGBO(198, 63, 68, 1.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.all(4),
                                child: TextFormField(
                                  controller: countryCodeController,
                                  keyboardType: TextInputType.none,
                                  autofocus: false,
                                  readOnly: true,
                                  validator: (value) {
                                    if (value == null || value == "") {
                                      return "";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onTap: () async {
                                    var countrycodepick = (await countryPicker
                                        .showPicker(context: context));
                                    countrycode = countrycodepick!.dialCode;
                                    countryCodeController.text =
                                        "(${countrycodepick.dialCode}) ${countrycodepick.name}";
                                    setState(() {});
                                  },
                                  style: TextStyle(
                                    color: Color.fromRGBO(18, 69, 49, 1.0),
                                  ),
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    suffix: Icon(
                                      Icons.expand_more_outlined,
                                      color: Color.fromRGBO(18, 69, 49, 1.0),
                                      // FontAwesomeIcons.angleDown,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(width: 1),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.all(5),
                                child: TextFormField(
                                  textAlign: TextAlign.center,
                                  keyboardType: TextInputType.phone,
                                  controller: phoneController,
                                  style: TextStyle(
                                    color: Color.fromRGBO(18, 69, 49, 1.0),
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter your mobile number",
                                    hintStyle: TextStyle(
                                      color: Color.fromRGBO(18, 69, 49,
                                          1.0), // Change hint text color
                                    ),
                                    labelStyle: TextStyle(
                                      color: Color.fromRGBO(18, 69, 49, 1.0),
                                    ),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.always,
                                    border: InputBorder.none,
                                  ),
                                  validator: (value) {
                                    // if (value!.isEmpty || value.length != 10) {
                                    //   showToast("Enter valid Phone Number",
                                    //       theme.colorPrimary);
                                    //   return "";
                                    // } else {
                                    //   return null;
                                    // }
                                  },
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "We will send you one time\npassword(OTP)",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(18, 69, 49, 1.0),
                                        ),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Carrier rates may apply",
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(18, 69, 49, 1.0),
                                        ),
                                        textAlign: TextAlign.center,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: FloatingActionButton(
                          backgroundColor: Color.fromRGBO(18, 69, 49, 1.0),
                          isExtended: true,
                          onPressed: () {
                            // if (!_formKey.currentState!.validate()) {
                            //   _formKey.currentState!.reset();
                            //   showToast("Please fill all fields currectly",
                            //       theme.colorPrimary);
                            // } else {
                            //   navigateTo(
                            //       context,
                            //       OTPScreen(
                            //         phoneNumber:
                            //             "$countrycode${phoneController.text}",
                            //       ));
                            // }
                          },
                          // child: const Icon(
                          // Icons.arrowRight,
                          // color: Colors.white,
                          // ),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
