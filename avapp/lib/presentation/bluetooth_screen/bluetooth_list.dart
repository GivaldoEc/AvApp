import 'package:avapp/bloc/BTCubit/bt_cubit.dart';
import 'package:avapp/repo/const/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BluetoothContainer extends StatelessWidget {
  const BluetoothContainer({required this.deviceTitle, super.key});
  final String deviceTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 400,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          border: Border.all(color: Colors.white)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Nome do dispositivo: $deviceTitle",
              textAlign: TextAlign.left,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class BluetoothDeviceList extends StatelessWidget {
  const BluetoothDeviceList({super.key});

  @override
  Widget build(BuildContext context) {
    BtCubit btCubit = BlocProvider.of<BtCubit>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      btCubit.connectToDevice(btCubit.getDevices()[index]!);
                    },
                    child: BluetoothContainer(
                    deviceTitle: btCubit.getDevices()[index]!.toString(),

                        // deviceTitle: btCubit.getDevices()[index]!.name == ""
                        //     ? "Dispositivo sem nome"
                        //     : btCubit.getDevices()[index]!.name),
                  )); // Line that checks for unnamed devices
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      color: midGreen,
                    ),
                itemCount: btCubit.getDevices().length),
          ),
          ElevatedButton(
              onPressed: () {
                btCubit.lookForDevices();
              },
              child: const Text("Buscar novamente")),
        ],
      ),
    );
  }
}
