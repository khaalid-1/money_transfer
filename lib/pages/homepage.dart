import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_transfer/constants/themes.dart';
import 'package:mobile_transfer/controllers/homecontroller.dart';
import 'package:flutter_tts/flutter_tts.dart';

class homepage2 extends StatefulWidget {
  const homepage2({Key? key}) : super(key: key);

  @override
  State<homepage2> createState() => _homepage2State();
}

class _homepage2State extends State<homepage2> {
  final flutterTts = FlutterTts();
  String reciverNumber = "Enter reciever number ";
  String money = "Enter money to send ";
  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(-10);
    await flutterTts.speak(text);
  }

  getSpeak() {
    String allTxet = reciverNumber + ", and , " + money;

    speak(allTxet);
  }

  @override
  void initState() {
    
      getSpeak();
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (ctr) => Scaffold(
        backgroundColor: Colors.white54,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ctr.numberPost,
              style: appthem.kTitle,
            ),
            Text(
              ctr.moneyPost,
              style: appthem.kTitle,
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  controller: ctr.NumberController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: reciverNumber),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  controller: ctr.MoneyController,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: money),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Center(
                child: SizedBox(
                  width: 380,
                  height: 50,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: ElevatedButton(
                      onPressed: () {
                        showAlertDialog(context);

                        ctr.setPostvalue();
                      },
                      child: Text(
                        'SEND',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = ElevatedButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
        "[-EVCplus-] 10 ayaad u wareejisay 617382769, Tar:13/4/23 13:48:20,haraagaaga  waa    20 sano oo adeeg bulsho ah"),
    content: TextField(
      decoration: InputDecoration(hintText: 'Geli PIN-KAAGA'),
    ),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
