import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('tab_one').tr()),
      body: Center(child: Text('tab_one').tr()),
    );
  }
}
