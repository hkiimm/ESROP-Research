import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// App opens up to ppg_settings_page.dart.
/// File is called through the ppg page function.
/// One of the tabs under the PPG setting page.
/// Contents of code below:
///  - Selection for the LED Driver is done here.
///  - Only two options: reflective and transmissive.
///     - Completed using a dropdown menu.

// TO-DO:
// - complete the reset and apply buttons

class LEDDriver extends StatefulWidget {
  const LEDDriver({ Key? key }) : super(key: key);

  @override
  _LEDDriverState createState() => _LEDDriverState();
}

class _LEDDriverState extends State<LEDDriver> {
  final modeList = ["Reflective", "Transmissive"]; // different options for the LED Driver
  String val = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // characteristics of the setting page
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // singular dropdown menu with two options for the LED Driver 
              SizedBox(height: 20),
              DropdownSearch<String>(
                popupBarrierColor: Colors.grey.withOpacity(0.4),
                popupBackgroundColor: Colors.white,
                maxHeight: 110,
                mode: Mode.MENU,
                showSelectedItems: true,
                items: modeList,
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Mode",
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
              // reset and apply button used to set or remove the setting
              SizedBox(height: 20),
              Row (
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  MaterialButton(
                    onPressed: () {
                      // INCOMPLETE
                    },
                    color: Color.fromARGB(255, 10, 89, 126),
                    child: Text('Reset', style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                  SizedBox(width: 10),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        // INCOMPLETE
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
