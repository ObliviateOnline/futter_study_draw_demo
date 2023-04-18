
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:futter_study_draw_demo/01_start/paper.dart';

void main() {
  //init
  WidgetsFlutterBinding.ensureInitialized();
  //land
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  //overlays
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  
  runApp(Container(
    color: Colors.white,
    child:  const Paper(),
  ));
}