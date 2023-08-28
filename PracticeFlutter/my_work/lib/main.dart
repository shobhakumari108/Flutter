import 'package:flutter/material.dart';

import 'API/home_page.dart';
import 'AnimatedSidebar/HomeScreen.dart';
import 'Calls/videocall_screen.dart';
import 'Explore/explore.dart';
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
import 'Upcoming_events/Upcoming_events_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: MyForm(),
    );
  }
}
