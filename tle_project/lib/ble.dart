import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:get/get.dart';
import 'package:tle_project/bluetooth_controller.dart';

class blescreen extends StatefulWidget {


  @override
  State<blescreen> createState() => _blescreenState();
}

class _blescreenState extends State<blescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Find Device"),
        centerTitle: true,
      ),
      body: GetBuilder<BluetoothController>(
        init: BluetoothController(),
        builder: (controller){
          return SingleChildScrollView(
            child: Column(
              children: [

                const SizedBox(height: 20,),
                Center(child: ElevatedButton(
                  onPressed: () => controller.scanDevices(),
                  child: Text("Scan"),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      minimumSize: const Size(200,55),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      )
                  ),
                ),
                ),
                const SizedBox(height: 20),
                StreamBuilder<List<ScanResult>>(
                    stream: controller.scanResults,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                            shrinkWrap: true,
                            itemCount: snapshot.data?.length,
                            itemBuilder: (context, index) {
                              final data = snapshot.data![index];

                                return Card(
                                  elevation: 2,

                                  child: ListTile(
                                    title: Text(data.device.name),
                                    subtitle: Text(data.device.id.id),
                                    trailing: Text(data.rssi.toString()),
                                  ),
                                );


                            });
                      } else {
                        return const Center(child: Text("Device not found"),);
                      }
                    })





              ],
            ),

          );
        }
      )

    );
  }
}
