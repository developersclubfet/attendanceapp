import 'package:attendance_app/controller/show_dialog_controller/show_dialog_controller.dart';
import 'package:attendance_app/widgets/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    ShowDialogController showDialogController = Get.put(ShowDialogController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('AttendanceApp'),
        elevation:0,
      ),
      body: ListView.builder(
        itemCount: showDialogController.subjectName.length,
        itemBuilder: (BuildContext context, int index) {
          return Obx(() => Text(showDialogController.subjectName[index]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return const ShowDialog();
              });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
