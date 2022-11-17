import 'package:avapp/repo/const/themes/colors.dart';
import 'package:flutter/material.dart';

class BluetoothError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(50)),
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
        ),
        child: const Center(
            child: Text(
          "Erro inesperado na comunicação\nbluetooth",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic,
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}

class BtOffWidget extends StatelessWidget {
  const BtOffWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 70.0),
          child: Icon(
            Icons.bluetooth_disabled,
            size: 100,
            color: textColor,
          ),
        ),
        Text(
          "Bluetooth desativado",
          style: TextStyle(
            color: textColor,
            fontSize: 25,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    ));
  }
}
