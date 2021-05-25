import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:school_domain_module/school_domain_module.dart' as dm;
import 'package:school_data_module/school_data_module.dart' as dt;
import 'package:school_presentation_module/school_presentation_module.dart'
    as ps;
import 'package:core_module/core_module.dart' as cr;

void main() async {
  Bloc.observer = MyBlocObserver();
  await cr.init();
  await dm.init();
  await dt.init();
  await ps.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ps.LoginPage(),
    );
  }
}
