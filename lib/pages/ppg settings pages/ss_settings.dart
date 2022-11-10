import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

/// App opens up to ppg_settings_page.dart.
/// File is called through the PPG page function.
/// One of the tabs under the PPG setting page.
/// Contents of code below:
///  - All of the settings needed to control the PPG settings of the device.
///     - Dropdown lists for gain and smux configuration.
///     - Integration rate is a numerical typed input.
///  - Changes made to the settings should not be applied until reset and apply is clicked.

// TO-DO:
// - complete the reset and apply buttons
// - both buttons only work for the textbox
//    - need to figure out how it works for drop down menus
// - figure out how users can click on the screen to close the textbox

class SpectralSensorSettings extends StatefulWidget {
  const SpectralSensorSettings({Key? key}) : super(key: key);

  @override
  _SpectralSensorSettingsState createState() => _SpectralSensorSettingsState();
}

class _SpectralSensorSettingsState extends State<SpectralSensorSettings> {
  // variables used throughout this class
  final _textController = TextEditingController();
  final gainList = ["1","2","3","4","5","6","7","8","9","10","11","12"]; // options for gain
  final smux = ["Real All", "Read 12", "Read 6"]; // options for smux
  String selectedVal = "";
  String val = "";
  String value = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // characteristics of the page
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // characteristics of the integration rate setting
              SizedBox(height: 20),
              TextField( // designate as a typed input
                controller: _textController,
                decoration: InputDecoration(
                  labelText: "Integration Rate",
                  border: OutlineInputBorder(),
                ),
              ),
              // characteristics of the gain setting
              SizedBox(height: 20),
              DropdownSearch<String>( // designate as a dropdown menu
                popupBarrierColor: Colors.grey.withOpacity(0.4),
                popupBackgroundColor: Colors.white,
                mode: Mode.MENU,
                showSelectedItems: true,
                items: gainList,
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Gain",
                  border: OutlineInputBorder(),
                ),
                /*onChanged: (val) {
                  setState(() {
                    selectedVal = val as String;
                  });
                },*/
                showSearchBox: true,
                searchFieldProps: TextFieldProps(
                  cursorColor: Colors.blueGrey,
                ),
              ),
              // characteristics of the smux configuration setting
              SizedBox(height: 20),
              DropdownSearch<String>( // designate as a dropdown menu
                popupBarrierColor: Colors.grey.withOpacity(0.4),
                mode: Mode.MENU,
                maxHeight: 170,
                showSelectedItems: true,
                items: smux,
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Smux Configuration",
                  border: OutlineInputBorder(),
                ),
                /*onChanged: (val) {
                  setState(() {
                    selectedVal = val as String;
                  });
                },*/
                searchFieldProps: TextFieldProps(
                  cursorColor: Colors.blueGrey,
                ),
              ),
              // characteristics of the reset and apply button alignment
              SizedBox(height: 20),
              Row (
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton( // button that clears all chosen settings from the device
                    onPressed: () {
                      _textController.clear();
                      // INCOMPLETE
                    },
                    color: Color.fromARGB(255, 10, 89, 126),
                    child: Text('Reset', style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                  SizedBox(width: 10),
                  MaterialButton( // button that applys all chosen settings to the device
                    onPressed: () {
                      setState(() {
                        selectedVal = _textController.text;
                        //val = 
                      });
                    },
                    color: Color.fromARGB(255, 10, 89, 126),
                    child: Text('Apply', style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
