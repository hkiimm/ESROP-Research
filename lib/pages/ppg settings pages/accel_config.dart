import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// App opens up to ppg_settings_page.dart.
/// File is called through the ppg page function.
/// One of the tabs under the PPG setting page.
/// Contents of code below:
///  - Selection for the Accelerometer is done here.
///  - Can be enabled or disabled.
///     - Completed using a dropdown menu.

// TO-DO:
// - complete the reset and apply buttons

class AccelerometerConfig extends StatefulWidget {
  const AccelerometerConfig({ Key? key }) : super(key: key);

  @override
  _AccelerometerConfigState createState() => _AccelerometerConfigState();
}

class _AccelerometerConfigState extends State<AccelerometerConfig> {
  final accelConfig = ["Enabled", "Disabled"];
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
              SizedBox(height: 20),
              DropdownSearch<String>( // singular dropdown menu to enable or disable the accelerometer of the device
                popupBarrierColor: Colors.grey.withOpacity(0.4),
                popupBackgroundColor: Colors.white,
                maxHeight: 110,
                mode: Mode.MENU,
                showSelectedItems: true,
                items: accelConfig,
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Accelerometer",
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
              // reset and apply button to choose the setting
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
