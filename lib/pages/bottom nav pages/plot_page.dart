import 'package:flutter/material.dart';
import 'package:flutter_tab_bar/pages/plot%20pages/data.dart';
import '../plot pages/plot_screens.dart';

/// *INCOMPLETE*
/// Plots of the PPG device are displayed here.

class PlotPage extends StatelessWidget {
  const PlotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
        children: placeholderData.map((plotScreen) => PlotScreen(
            plotScreen.title,
            plotScreen.color,
        )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 600,
          childAspectRatio: 1,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          mainAxisExtent: 250,
        ),
      ),
    );
  }
}
