import 'package:avapp/bloc/BTCubit/bt_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repo/const/themes/colors.dart';
import 'bluetooth_list.dart';

class CharacteristicPage extends StatelessWidget {
  const CharacteristicPage({super.key});

  @override
  Widget build(BuildContext context) {
    BtCubit btCubit = BlocProvider.of<BtCubit>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      btCubit.sendOpenRequisition(btCubit.getCharacteristics()[index]);
                    },
                    child: BluetoothContainer(
                        deviceTitle: btCubit.getCharacteristics()[index].toString()),
                  ); // Line that checks for unnamed devices
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      color: midGreen,
                    ),
                itemCount: btCubit.getCharacteristics().length),
        ),
          ElevatedButton(
              onPressed: () {
                btCubit.scanCharacteristics();
              },
              child: const Text("Buscar novamente")),
      ],
      ),
    );
  }
}
