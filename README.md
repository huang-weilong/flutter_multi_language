# flutter_multi_language

## 添加依赖
```yaml
dependencies:
  flutter_localizations:
    sdk: flutter
    
  easy_localization: ^1.3.1
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
void main() => runApp(EasyLocalization(child: MyApp()));
```

## 在MaterialApp中添加
```dart
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
```

## 使用
```dart
Text(AppLocalizations.of(context).tr('title'))
```

## 切换语言
```dart
var data = EasyLocalizationProvider.of(context).data;
data.changeLocale(Locale("zh", "CN"));
```

