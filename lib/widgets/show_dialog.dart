import 'package:attendance_app/controller/show_dialog_controller/show_dialog_controller.dart';
import 'package:attendance_app/widgets/my_button.dart';
import 'package:flutter/material.dart';

class ShowDialog extends StatelessWidget {
  const ShowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    ShowDialogController dialogController = ShowDialogController();
    return AlertDialog(
      content: Container(
        height: 260,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Enter you Subject Name:'),
            const SizedBox(height: 10),
            TextField(
              controller: dialogController.subjectTextController,
              decoration: const InputDecoration(
                hintText: 'Subject Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const Text('Enter you Department Name:'),
            const SizedBox(height: 10),
            TextField(
              controller: dialogController.classTextController,
              decoration: const InputDecoration(
                hintText: 'Department Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButton(
                    buttonText: 'Cancel',
                    onPressed: dialogController.closeDialog),
                MyButton(
                    buttonText: 'Save', onPressed: dialogController.saveDialog),
              ],
            )
          ],
        ),
      ),
    );
  }
}
