import 'package:flutter/material.dart';

/// *INCOMPLETE*
/// *TESTING FEATURES*

class ButtonWidget extends StatelessWidget {
  final VoidCallback onClicked;

  const ButtonWidget({
    required this.onClicked,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => RaisedButton(
        shape: StadiumBorder(),
        color: Theme.of(context).accentColor,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        textColor: Colors.white,
        onPressed: onClicked,
      );
}
