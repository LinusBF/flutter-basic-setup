import 'package:flutter/material.dart';
import 'package:flutter_basic/styles/colors.dart';
import 'package:flutter_basic/styles/text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const FlutterBasic());
}

class FlutterBasic extends StatelessWidget {
  const FlutterBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Basic',
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({required this.title, Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Text('Welcome to a Flutter App!', style: AppText.h1),
            SizedBox(width: 10),
            Icon(FontAwesomeIcons.google, color: AppColor.blue),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
