import 'package:get/get.dart';
import 'package:mobile_transfer/pages/homepage.dart';
import 'package:mobile_transfer/pages/profile_page.dart';
import '../pages/message_page.dart';

class BTmNavController extends GetxController {
  late int currenIndex = 0;
  final List pages = [
    homepage2(),
    messages(),
    profile(),
  ];
  getCurrentIndex(newval) {
    currenIndex = newval;
    update();
  }
}
