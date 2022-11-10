import 'package:flutter/material.dart';

/// *INCOMPLETE*
/// *TESTING FEATURES*

class BLEList extends StatefulWidget {
  const BLEList({ Key? key }) : super(key: key);

  @override
  _BLEListState createState() => _BLEListState();
}

class _BLEListState extends State<BLEList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: Colors.white,
			body: Container(),
			persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {},
          child: const Icon(Icons.search),
        ),
				ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {},
          child: const Icon(Icons.bluetooth),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey, // background
            onPrimary: Colors.white, // foreground
          ),
          onPressed: () {},
          child: const Icon(Icons.celebration_rounded),
        ),
      ],
		);
  }
}