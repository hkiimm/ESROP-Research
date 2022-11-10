import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/pages/ble/ble_widget.dart';
import 'package:flutter_tab_bar/pages/bottom%20nav%20pages/history_page.dart';
import 'package:flutter_tab_bar/pages/bottom%20nav%20pages/plot_page.dart';
import 'package:flutter_tab_bar/pages/bottom%20nav%20pages/settings_page.dart';
import 'package:flutter_tab_bar/pages/bottom%20nav%20pages/ppg_settings_page.dart';

/// App opens up to main_page.dart.
/// File is called through the main function.
/// Contents of code below:
///  - AppBar layout and design
///     - Bluetooth button in the AppBar opens up a pop-up for BLE connections
///  - Bottom navigation bar used to travel between contents of the app
///     - PPG settings
///     - Sensor settings
///     - Plot
///     - History
/// These features remain active regardless of which page you are on.
/// All other files are called here - or linked in some way.

// TO-DO:
//  - insert pop-up screen when bluetooth icon is pressed
//  - set up BLE connection page that can be called to the custom page

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // list (array) of all the different pages for the bottom nav bar : left to right
  List pages = [
    HomePage(), // page 1
    SettingsPage(), // page 2
    PlotPage(), // page 3
    HistoryPage(), // page 4
  ];

  int currentIndex = 0; // current page the user is on

  // when a user navigates between tabs, the index changes
  // when a different tab is tapped, the current index is changed
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // top bar of the app
      appBar: AppBar(
        // bluetooth button leads to a pop-up that displays nearby available connections 
        leading: IconButton(
          icon: Icon(Icons.bluetooth, size: 30, color: Colors.white),
          onPressed: () {
            BLEButton(); // ** NEED TO FIGURE THIS OUT **
          },
        ),
        centerTitle: false,
        // text displayed in the app bar : would need to be changed to the name of the app
        title: Text(
          'App Name',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      // bottom navigation bar
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 100,
        child: BottomNavigationBar(
          // characteristics of the bottom nav bar
          onTap: onTap,
          backgroundColor: Color.fromARGB(255, 226, 226, 226),
          currentIndex: currentIndex,
          selectedItemColor: Colors.black, // color when users on the tab
          unselectedItemColor: Colors.grey, // color for unselected tabs
          // items for the bottom navigation bar : 4 items
          // each navigation item top down corresponds to the tabs left to right
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'PPG Settings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.miscellaneous_services),
                label: 'Sensor Settings'),
            BottomNavigationBarItem(
                icon: Icon(Icons.monitor_heart), label: 'Plot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.history), label: 'History'),
            // labels only shown when tab active
          ]),
      ),
    );
  }
}
