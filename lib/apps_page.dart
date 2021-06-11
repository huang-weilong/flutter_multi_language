import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppsPage extends StatefulWidget {
  @override
  _AppsPageState createState() => _AppsPageState();
}

class _AppsPageState extends State<AppsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tab_two').tr()),
      body: Center(child: Text('tab_two').tr()),
    );
  }
}
