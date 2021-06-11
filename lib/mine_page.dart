import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MinePage extends StatefulWidget {
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tab_three').tr(),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (_) => ChangeLanguagePage()));
          },
          child: Text('change_lang').tr(),
        ),
      ),
    );
  }
}

class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('change_lang').tr()),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale("zh", "CN"));
              },
              child: Text('lang_zh').tr(),
            ),
            ElevatedButton(
              onPressed: () {
                context.setLocale(Locale("en", "US"));
              },
              child: Text('lang_en').tr(),
            ),
          ],
        ),
      ),
    );
  }
}
