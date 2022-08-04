// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basketball_counter_app/cubit/cubit_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_page.dart';

void main() {
  runApp(pointsCounter());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//Mari 4
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
     // home:SplashScreen() ,
    );
  }
}


class pointsCounter extends StatelessWidget {



  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Counter_Screen(),
      ),
    );
  }
}
