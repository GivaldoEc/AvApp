import 'package:avapp/bloc/BTCubit/bt_cubit.dart';
import 'package:avapp/presentation/bluetooth_screen/blueetooth_error.dart';
import 'package:avapp/presentation/bluetooth_screen/bluetooth_list.dart';
import 'package:avapp/presentation/bluetooth_screen/characteristic_bt.dart';
import 'package:avapp/repo/const/themes/colors.dart';
import 'package:avapp/repo/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BtCubit(),
      child: Scaffold(
        appBar: AppBar(title: const Text("Nova run")),
        backgroundColor: clearestGreen,
        body: BlocBuilder<BtCubit, BtState>(
          builder: (context, state) {
            if (state is BtInitial) {
              return const BluetoothError();
            } else if (state is BtSearching || state is BtDonwloading) {
              return const LoadingWidget();
            } else if (state is BtOFF) {
              return const BtOffWidget();
            } else if (state is BtDisconnected) {
              return const BluetoothDeviceList();
            } else if (state is BtConnected) {
              return const CharacteristicPage();
            } else {
              return const BluetoothError();
            }
          },
        ),
      ),
    );
  }
}
