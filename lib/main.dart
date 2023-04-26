import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
    MyApp({Key? key}) : super(key: key);
   String threeWordAddress = "physical.juror.sounds";
  void openThreeWordsApp() async {
    String url = "w3w://show?threewords=$threeWordAddress";
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw "Could not launch $url";
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: openThreeWordsApp,
                child: Text(threeWordAddress)),

          ],
        )
      ),

    );
  }
}
