import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:provider/provider.dart';
import 'providers/providers.dart';
import 'package:systel_assignment_mohamed/config/route/route_constants.dart';

import 'consts/consts.dart';
import 'config/route/router.dart' as router;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String url = 'https://test.voycephone.com/parse/';
  String appId = 'com.voyce';
  await Parse().initialize(appId, url);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginProvider>(create: (_) => LoginProvider()),
        ChangeNotifierProvider<CurrentUserProvider>(
            create: (_) => CurrentUserProvider()),
        ChangeNotifierProvider<BankStatementProvider>(
            create: (_) => BankStatementProvider()),
        ChangeNotifierProvider<UserHistoryProvider>(
            create: (_) => UserHistoryProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontFamily: 'SFCompact'),
            bodyText2: TextStyle(fontFamily: 'SFCompact'),
            headline1: TextStyle(fontFamily: 'SFCompact'),
            headline2: TextStyle(fontFamily: 'SFCompact'),
            headline3: TextStyle(fontFamily: 'SFCompact'),
            headline4: TextStyle(fontFamily: 'SFCompact'),
            headline5: TextStyle(fontFamily: 'SFCompact'),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              color: Colors.black,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(color: primaryColor),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0)),
              borderSide: BorderSide(
                color: errorColor,
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              primary: buttonColor,
              minimumSize: const Size(double.infinity, 32),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
            ),
          ),

          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: backgroundColor,
        ),
        onGenerateRoute: router.generateRoute,
        initialRoute: logInScreenRoute,
        // home: LoginScreen(),
      ),
    );
  }
}
