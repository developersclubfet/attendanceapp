// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowDialogController extends GetxController {
  TextEditingController subjectTextController = TextEditingController();
  TextEditingController classTextController = TextEditingController();
  List subjectName = [].obs;
  RxList departmentName = [].obs;

  @override
  void onClose() {
    super.onClose();
    classTextController.clear();
    subjectTextController.clear();
  }

  void saveDialog() {
    subjectName.add([subjectTextController.text]);
    subjectTextController.clear();
    departmentName.add([classTextController.text]);
    departmentName.clear();
    print(subjectName);
    Get.back();
  }

  void closeDialog() {
    Get.back();
    print(subjectName);
  }
}
