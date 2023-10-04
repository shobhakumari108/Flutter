import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_work/Agora/AHome_screen.dart';
import 'package:my_work/Explore/card.dart';
import 'package:my_work/Hunch/block_user.dart';
import 'package:my_work/Hunch/faq_contactus_screen.dart';
import 'package:my_work/Hunch/privacyPolicy_screen.dart';
import 'package:my_work/Hunch/privacy_policy_screen.dart';
import 'package:my_work/Hunch/terms_of_service_screen.dart';
import 'package:my_work/Hunch/whats_new_screen.dart';
import 'package:my_work/OneVideoCall/counselingScreen.dart';
import 'package:my_work/OneVideoCall/counsellor_profile_screen.dart';
import 'package:my_work/OneVideoCall/onevideocall_screen.dart';
import 'package:my_work/ValidChoice/Product_screen/product_screen.dart';
import 'package:my_work/ValidChoice/explore_screen.dart';
import 'package:my_work/ZoomSDK/zoom_screen.dart';
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
      home: BlockScreen(),
    );
  }
}
