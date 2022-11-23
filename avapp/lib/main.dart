import 'package:avapp/bloc/GraphCubit/graph_cubit.dart';
import 'package:avapp/presentation/graph_screen/graph_screen.dart';
import 'package:avapp/repo/const/themes/colors.dart';
import 'package:avapp/repo/portrait_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget with PortraitModeMixin {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: customMaterial,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => GraphCubit(),
          ),
        ],
        child: const GraphScreen(),
      ),
    );
  }
}
