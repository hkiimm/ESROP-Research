import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

/// App opens up to ppg_settings_page.dart.
/// File is called through the ppg page function.
/// One of the tabs under the PPG setting page.
/// Contents of code below:
///  - Contains the fast charge control register of the power management settings of the device.
///  - Dependent on whether the fast charge is enabled or disabled.
///     - If it is enabled, users are able to choose between different charge rates.

// TO-DO:
// - finish fixing all errors with dependant drop down button
// - add BLE function that can check the battery level of the PPG device
// - add rest of the settings needed under power management


class PowerManagement extends StatefulWidget {
  const PowerManagement({ Key? key }) : super(key: key);

  @override
  _PowerManagementState createState() => _PowerManagementState();
}

class _PowerManagementState extends State<PowerManagement> {
  // list (array) of the variables needed for the fast charge setting
  List<dynamic> fastCharge = [];
  List<dynamic> chargeValues = [];
  List<dynamic> values = [];

  String? chargeId;
  String? valueId;

  @override
  void initState() {
    super.initState();

    // var used to check whether the setting is enabled or disabled
    this.fastCharge.add({"val": 1, "name": " Enabled"});
    this.fastCharge.add({"val": 2, "name": " Disabled"});

    // different fast charge values users can choose between
    this.chargeValues = [
      {"ID": 1, "Name": "5 mA", "ParentId": 1},
      {"ID": 2, "Name": "10 mA", "ParentId": 1},
      {"ID": 3, "Name": "15 mA", "ParentId": 1},
      {"ID": 4, "Name": "20 mA", "ParentId": 1},
      {"ID": 5, "Name": "25 mA", "ParentId": 1},
      {"ID": 6, "Name": "30 mA", "ParentId": 1},
      {"ID": 7, "Name": "35 mA", "ParentId": 1},
    ];
  }

  /// ** INCOMPLETE ** does not work
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            // characteristics of the setting 
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              FormHelper.dropDownWidget( // designate as dropdown
                context, 
                // prompt users to enable/disable setting
                "Select Mode",
                this.chargeId,
                this.fastCharge,
                (onChangedVal) { // occurs once a mode is selected
                  this.chargeId = onChangedVal;
                  print("Selected Mode: $onChangedVal");

                  this.values = this
                      .chargeValues
                      .where(
                        (stateItem) =>
                            stateItem["ParentId"].toString() ==
                            onChangedVal.toString(),
                      )
                      .toList();
                  this.valueId = null;
                },
                (onValidateVal) { // if enabled user prompted to choose a rate
                  if (onValidateVal == null) {
                    return 'Please Select Fast Charge Rate';
                  }
                  return null;
                },
                borderColor: Theme.of(context).primaryColor,
                borderFocusColor: Theme.of(context).primaryColor,
                borderRadius: 10,
                //optionValue: "val",
                //optionLabel: "name",
              ),
            ],
          ),
        ),
      )
    );
  }
}
