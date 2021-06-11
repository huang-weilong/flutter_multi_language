# flutter_multi_language

## 添加依赖
```yaml
dependencies:
  flutter_localizations:
    sdk: flutter
    
  easy_localization: ^3.0.0
```

## 添加多语言json文件
在assets目录中添加多语言json文件，并在`pubspec.yaml`文件中添加声明
```yaml
 assets:
   - assets/langs/en-US.json
   - assets/langs/zh-CN.json
```

## 在main中添加
```dart
WidgetsFlutterBinding.ensureInitialized();
await EasyLocalization.ensureInitialized();
runApp(
   EasyLocalization(
     supportedLocales: [Locale('en', 'US'), Locale('zh', 'CN')],
     path: 'assets/langs',
     fallbackLocale: Locale('en', 'US'),
     child: MyApp(),
   ),
 );
```

## 在MaterialApp中添加
```dart
MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
```

## 使用
```dart
Text('title').tr()
```

## 切换语言
```dart
context.setLocale(Locale("zh", "CN"));
```

