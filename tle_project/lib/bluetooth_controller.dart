import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';

class BluetoothController extends GetxController {
  FlutterBluePlus flutterblue = FlutterBluePlus.instance;
  Future scanDevices() async{
    flutterblue.startScan(timeout: const Duration(seconds: 7));

    //flutterblue.stopScan();
  }
  Stream<List<ScanResult>> get scanResults => flutterblue.scanResults;
}


