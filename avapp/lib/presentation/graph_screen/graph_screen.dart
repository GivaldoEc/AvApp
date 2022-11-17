import 'package:flutter/material.dart';

import '../../repo/const/themes/colors.dart';
import '../../repo/widgets/drawer_widget.dart';
import '../bluetooth_screen/main_bt_screen.dart';

class GraphScreen extends StatelessWidget {
  const GraphScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.bluetooth),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MainScreen()));
        },
      ),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "AvApp",
            style: TextStyle(color: Colors.white),
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      backgroundColor: clearestGreen,
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.add_chart_outlined,
              size: 200,
              color: textColor,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 28.0),
              child: Text("Bem vindo",
              style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic, color: textColor),),
            )
          ],
        ),
      ),
    );
  }
}
