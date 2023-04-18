
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

void main() {
  //init
  WidgetsFlutterBinding.ensureInitialized();
  //land
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
  //overlays
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}