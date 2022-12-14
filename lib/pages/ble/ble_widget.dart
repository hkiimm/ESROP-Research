import 'package:flutter/material.dart';

/// *INCOMPLETE*
/// *TESTING FEATURES*

class BLEButton extends StatelessWidget {
  const BLEButton({ Key? key }) : super(key: key);

  @override
  void showCustomDialog(BuildContext context) => showDialog(
        builder: (context) => Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 12),
                Text(
                  'This is a Custom Dialog',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 12),
                Text(
                  'You get more customisation freedom in this type of dialogs',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  child: Text('Close'),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ),
          ),
        ), context: context,
        barrierDismissible: false,
      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}