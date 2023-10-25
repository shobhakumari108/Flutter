// import 'package:fl_country_code_picker/fl_country_code_picker.dart';
// import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// // import 'package:hunch/auth/screens/otp_screen.dart';
// // import 'package:hunch/main.dart';
// // import 'package:hunch/utils/navigator.dart';
// // import 'package:hunch/utils/snackbar.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final TextEditingController phoneController = TextEditingController();
//   final TextEditingController countryCodeController = TextEditingController();
//   final countryPicker = const FlCountryCodePicker();
//   final _formKey = GlobalKey<FormState>();
//   var countrycode = "+91";

//   @override
//   void initState() {
//     super.initState();
//     countryCodeController.text = "(+91) India";
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//           Expanded(
//             child: Column(
//               children: [
//                 Expanded(
//                   flex: 6,
//                   child: Container(
//                     color: theme.colorPrimary,
//                     alignment: Alignment.center,
//                     child: const Text(
//                       "HUNCH",
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.w900,
//                           fontSize: 40),
//                     ),
//                   ),
//                 ),
//                 const Expanded(flex: 3, child: SizedBox())
//               ],
//             ),
//           ),
//           Positioned(
//             bottom: size.width * .1,
//             left: 20,
//             right: 20,
//             child: Form(
//               key: _formKey,
//               child: SizedBox(
//                 height: size.height * .5,
//                 child: Stack(
//                   children: [
//                     SizedBox(
//                       height: size.height * .45,
//                       child: Card(
//                         elevation: 2,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(20)),
//                         child: Padding(
//                           padding: const EdgeInsets.all(10.0),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Container(
//                                   decoration: const BoxDecoration(
//                                       border:
//                                           Border(bottom: BorderSide(width: 1))),
//                                   child: TextFormField(
//                                     controller: countryCodeController,
//                                     keyboardType: TextInputType.none,
//                                     autofocus: false,
//                                     readOnly: true,
//                                     validator: (value) {
//                                       if (value == null || value == "") {
//                                         return "";
//                                       } else {
//                                         return null;
//                                       }
//                                     },
//                                     onTap: () async {
//                                       var countrycodepick = (await countryPicker
//                                           .showPicker(context: context));
//                                       countrycode = countrycodepick!.dialCode;
//                                       countryCodeController.text =
//                                           "(${countrycodepick.dialCode}) ${countrycodepick.name}";
//                                       setState(() {});
//                                     },
//                                     style: theme.text16bold,
//                                     decoration: const InputDecoration(
//                                       border: InputBorder.none,
//                                       suffix: FaIcon(
//                                         FontAwesomeIcons.angleDown,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 20,
//                               ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   border: Border.all(width: 1),
//                                   borderRadius: BorderRadius.circular(20),
//                                 ),
//                                 padding: const EdgeInsets.all(5),
//                                 child: TextFormField(
//                                   textAlign: TextAlign.center,
//                                   keyboardType: TextInputType.phone,
//                                   controller: phoneController,
//                                   style: theme.text16,
//                                   decoration: InputDecoration(
//                                     hintText: "Enter your mobile number",
//                                     labelStyle: theme.text14bold,
//                                     floatingLabelBehavior:
//                                         FloatingLabelBehavior.always,
//                                     border: InputBorder.none,
//                                   ),
//                                   validator: (value) {
//                                     if (value!.isEmpty || value.length != 10) {
//                                       showToast("Enter valid Phone Number",
//                                           theme.colorPrimary);
//                                       return "";
//                                     } else {
//                                       return null;
//                                     }
//                                   },
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceAround,
//                                   children: [
//                                     Container(
//                                       alignment: Alignment.center,
//                                       child: Text(
//                                         "We will send you one time\npassword(OTP)",
//                                         style: theme.text14bold,
//                                         textAlign: TextAlign.center,
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                     ),
//                                     Container(
//                                       alignment: Alignment.center,
//                                       child: Text(
//                                         "Carrier rates may apply",
//                                         style: theme.text14primary,
//                                         textAlign: TextAlign.center,
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.bottomCenter,
//                       child: SizedBox(
//                         height: 80,
//                         width: 80,
//                         child: FloatingActionButton(
//                           backgroundColor: theme.colorPrimary,
//                           isExtended: true,
//                           onPressed: () {
//                             if (!_formKey.currentState!.validate()) {
//                               _formKey.currentState!.reset();
//                               showToast("Please fill all fields currectly",
//                                   theme.colorPrimary);
//                             } else {
//                               navigateTo(
//                                   context,
//                                   OTPScreen(
//                                     phoneNumber:
//                                         "$countrycode${phoneController.text}",
//                                   ));
//                             }
//                           },
//                           child: const FaIcon(
//                             FontAwesomeIcons.arrowRight,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
