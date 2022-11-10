import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/pages/ppg%20settings%20pages/accel_config.dart';
import 'package:flutter_tab_bar/pages/ppg%20settings%20pages/led_driver.dart';
import 'package:flutter_tab_bar/pages/ppg%20settings%20pages/power_manag.dart';
import 'package:flutter_tab_bar/pages/ppg%20settings%20pages/ss_settings.dart';

/// Homepage contains the ppg settings organized in tabs.
/// Tabs are located below the appbar for easy navigation.
/// General PPG device settings can be changed here.
/// List of tabs:
///  - Spectral sensor settings
///  - LED Driver
///  - Accelerometer Configuration
///  - Power Management 
/// Settings should not get applied unless the 'Apply' button is pressed by the user.
/// Code for each tab is organized in separate respective files under 'PPG Settings Page' folder.

// TO-DO: 
// - N/A

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    // number of tabs available : 4
    TabController _tabController =
    TabController(length: 4, vsync: this);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Align(
              alignment: Alignment.center, // centered tab layout
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                labelColor: Colors.black, // color of text when selected
                labelStyle: TextStyle(fontSize: 17),
                unselectedLabelColor: Colors.grey, // color of tab text when not selected
                indicatorColor: Colors.black54, // color of underline indicator beneath selected tab
                // name of each tab : left to right
                tabs: [
                  Tab(text:"Spectral Sensor Settings"),
                  Tab(text:"LED Driver"),
                  Tab(text:"Accelerometer Configuration"),
                  Tab(text:"Power Management"), 
                ]
              ),
            ),
          ),
          Container(
            width: double.maxFinite, // screen width of each tab content
            height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - kToolbarHeight - 222,  // height of each tab content
            child: TabBarView(
              controller: _tabController,
              // content of each tab in order : left to right
              children: [
                SpectralSensorSettings(),
                LEDDriver(),
                AccelerometerConfig(),
                PowerManagement(),
              ]
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
