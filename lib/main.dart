import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_map/widgets/header/header.dart';
import 'package:my_map/widgets/map/map_widget.dart';
import 'package:my_map/widgets/request_button.dart';
import 'package:my_map/background%20worker/time_worker.dart';
import 'package:my_map/bloc/time_bloc.dart';
import 'package:my_map/widgets/trip%20configuration/trip_type_selector.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TimeBloc _timeBloc;

  @override
  void initState() {
    super.initState();
    _timeBloc = TimeBloc();
    TimeWorker().registerTimeTask();
  }

  Widget build(BuildContext context) {
    return BlocProvider<TimeBloc>(
      create: (context) => _timeBloc,
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          cardColor: const Color(0xFFEBEFF0),
          shadowColor: Colors.grey.shade300,
          hintColor: const Color(0xFF676767),
          primaryColor: const Color(0xff4ecc69),
          highlightColor: const Color(0xff438e53),
          textTheme: TextTheme(
            displayLarge: const TextStyle(
                fontFamily: 'Bold', fontSize: 21, color: Colors.black87),
            displayMedium: const TextStyle(
                fontFamily: 'Bold', fontSize: 20, color: Colors.black87),
            displaySmall: TextStyle(
                fontFamily: 'Nazanin',
                fontSize: 18,
                color: Colors.grey.shade600),
            bodyLarge: const TextStyle(fontFamily: 'Bold', fontSize: 12),
            bodyMedium: const TextStyle(
                fontFamily: 'Nazanin', fontSize: 12, color: Colors.grey),
            titleLarge: const TextStyle(
                fontFamily: 'Nazanin',
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Colors.white),
            titleMedium: const TextStyle(
              color: Color(0xff4ecc69),
              fontFamily: 'Nazanin',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        home: Scaffold(
          body: Stack(
            children: [
              MapWidget(),
              const Positioned(
                top: 50,
                right: 15,
                left: 15,
                child: Header(),
              ),
              Positioned(
                bottom: 75,
                right: 15,
                left: 15,
                child: SizedBox(
                  height: 180,
                  child: TripTypeSelector(),
                ),
              ),
              const Positioned(
                left: 15,
                right: 15,
                bottom: 10,
                child: SizedBox(
                  height: 60,
                  child: RequestButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MyApp());
