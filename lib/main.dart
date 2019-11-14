import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_multi_language/apps_page.dart';
import 'package:flutter_multi_language/index_page.dart';
import 'package:flutter_multi_language/mine_page.dart';

void main() => runApp(EasyLocalization(child: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        title: 'Flutter Demo',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          EasylocaLizationDelegate(
            locale: data.locale,
            path: 'assets/langs', // 多语言路径
          ),
        ],
        supportedLocales: [Locale('en', 'US'), Locale('zh', 'CN')],
        locale: data.savedLocale,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: <Widget>[
          IndexPage(),
          AppsPage(),
          MinePage(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text(AppLocalizations.of(context).tr('tab_one'))),
          BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text(AppLocalizations.of(context).tr('tab_two'))),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text(AppLocalizations.of(context).tr('tab_three'))),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
