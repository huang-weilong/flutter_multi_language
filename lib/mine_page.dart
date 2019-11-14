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
        title: Text(AppLocalizations.of(context).tr('tab_three')),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (_) => ChangeLanguagePage()));
          },
          child: Text(AppLocalizations.of(context).tr('change_lang')),
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
    var data = EasyLocalizationProvider.of(context).data;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).tr('change_lang')),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                // 切换语言
//                this.setState(() {
                data.changeLocale(Locale("zh", "CN"));
//                });
              },
              child: Text(AppLocalizations.of(context).tr('lang_zh')),
            ),
            RaisedButton(
              onPressed: () {
//                this.setState(() {
                data.changeLocale(Locale("en", "US"));
//                });
              },
              child: Text(AppLocalizations.of(context).tr('lang_en')),
            ),
          ],
        ),
      ),
    );
  }
}
