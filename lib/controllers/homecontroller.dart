import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  late TextEditingController NumberController = TextEditingController();
  late TextEditingController MoneyController = TextEditingController();
  late String numberPost = '';
  late String moneyPost = '';

  // String rmd = "  ramadaan mubaarak";

  setPostvalue() {
    numberPost = NumberController.text;
    moneyPost = MoneyController.text;
    update();
  }
}
