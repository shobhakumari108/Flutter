import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_work/API_Com/Chome_screen.dart';
import 'package:my_work/API_Photo/p_home.dart';
import 'package:my_work/Agora/AHome_screen.dart';
import 'package:my_work/Explore/card.dart';
import 'package:my_work/Hunch/block_user.dart';
import 'package:my_work/Hunch/community_guideLines.dart';
import 'package:my_work/Hunch/faq_contactus_screen.dart';
import 'package:my_work/Hunch/privacyPolicy_screen.dart';
import 'package:my_work/Hunch/privacy_policy_screen.dart';
import 'package:my_work/Hunch/terms_of_service_screen.dart';
import 'package:my_work/Hunch/whats_new_screen.dart';
import 'package:my_work/OneVideoCall/counselingScreen.dart';
import 'package:my_work/OneVideoCall/counsellor_profile_screen.dart';
import 'package:my_work/OneVideoCall/onevideocall_screen.dart';
import 'package:my_work/Placement_Screen/company_logo.dart';
import 'package:my_work/Placement_Screen/company_logo2.dart';
import 'package:my_work/Placement_Screen/logo.dart';
import 'package:my_work/Placement_Screen/upcomming_com.dart';
import 'package:my_work/Practice/practice5.dart';
import 'package:my_work/Practice/practice6.dart';
import 'package:my_work/Practice/practice7.dart';
import 'package:my_work/Practice/practice8.dart';
import 'package:my_work/Practice/practice9.dart';
import 'package:my_work/Practice/practice_1.dart';
import 'package:my_work/Practice/practice_2.dart';
import 'package:my_work/Practice/practice_3.dart';
import 'package:my_work/Practice/practice_4.dart';
import 'package:my_work/ValidChoice/Product_screen/product_screen.dart';
import 'package:my_work/ValidChoice/explore_screen.dart';
import 'package:my_work/ZoomSDK/zoom_screen.dart';
import 'package:my_work/page3.dart';
import 'package:my_work/valid_choice/Otp_screen.dart';
import 'package:my_work/valid_choice/blur_screen.dart';
import 'package:my_work/valid_choice/blur_screen2.dart';
import 'package:my_work/valid_choice/login_screen1.dart';
import 'package:my_work/valid_choice/signup_screen1.dart';
import 'API/home_page.dart';
import 'AnimatedSidebar/HomeScreen.dart';
import 'Calls/videocall_screen.dart';
import 'Complaint/complaint_screen.dart';
import 'Explore/explore.dart';
import 'Firebase/Image_screen.dart';
import 'Firebase/Otp_screen.dart';
import 'Firebase/SignUp_Screen.dart';
import 'Firebase/Signin.dart';
import 'HiddenDrawer/Home.dart';
import 'HiddenDrawer/Home_screen.dart';
import 'Navbar/navbar_screen.dart';
import 'Notification/notification_screen.dart';
import 'Search/search_screen.dart';
import 'Settings/help_screen.dart';
import 'Settings/settings_screen.dart';
import 'SidebarAnimation/SideMenu_screen.dart';
import 'TechnicalSupport/technicalSupport_screen.dart';
import 'TrendingTopics/trendingTopic_screen.dart';
import 'UpcomingEvents/upcomingEvents_screen.dart';
import 'Upcoming_events/Upcoming_events_screen.dart';
import 'otpVerification/phone.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      // home: MainScreen(),
      // home: SideMenu(),
      // home: HomePage(),
      // home:NavbarScreen(),
      // home: VideoScreen(),
      // home: NotificationScreen(),
      // home:UpcomingEvents(),
      // home: SettingsScreen(),
      // home:ExploreScreen(),
      // home:SearchScreen(),
      // home: TrendingTopicScreen(),
      // home: MyForm(),
      // home:ComplaintScreen(),
      // home: SignupScreen(),
      // home: MyScreen(),
      // home:SignInScreen(),
      // home: OtpScreen(),
      // home:UpcomingScreen(),
      // home:Phone(),
      // home:VideoCallScreen(),
      // home: CounselingPage(),
      // home: CounsellorProfile(),
      // home:Explore(),
      // home:HomeAPI(),
      // home: ZoomScreen(),
      // home:AHomeScreen(),
      // home:MyCard(),
      // home:ProductScreen(),
      // home:PrivacyPolicyScreen(),

      // home: FaqContactusScreen(),
      // home: WhatsNewScreen(),
      // home:PrivacyAndPolicyScreen(),
      // home:TermOfService(),
      // home: BlockScreen(),
      // home: PHomeScreen(),
      //  home:CommunityGuidelinesScreen(),
      // home:CHome(),
      // home: LoginScreen1(),
      // home:BlurScreen2(),
      // home:BlurScreen(),
      // home:SignupScreen1(),
      // home:OTPScreen(),
      // home: OTPScreen(phoneNumber: '',),
// *******************************************************
      // home: HomePage(),
      // home: CustomPage(),
      // home: CustomAnimationPage(),
      // home:SlideAnimationPage(),
      // home: RotatingAnimationPage(),
      // home:App(),
      // home: App2(),
      //  home:HomePage1(),
      // home:HomePage2(),
      // home: HomePage3(),
      // home:HomePage4(),
      
      // home:HomePage5(),
      // home:HomePage6(),
      // home:HomePage7(),
      // home:HomePage8(),

      // home: HomePage9(),
// ??*********************************************************
      //  home:Page3(),
      // home: RoundedLogo(),
      // home: AnotherRoundedLogo(),
      // home: LogoScreen(),
      home:UpcomingCompany(),

    
    );
  }
}
