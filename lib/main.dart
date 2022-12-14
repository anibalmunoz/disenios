import 'package:disenios/pages/basic_design.dart';
import 'package:disenios/pages/home_page.dart';
import 'package:disenios/pages/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomePage.namePage,
      theme: ThemeData.dark(),
      routes: {
        BasicDesignPage.namePage: (_) => const BasicDesignPage(),
        ScrollPage.namePage: (_) => const ScrollPage(),
        HomePage.namePage: (_) => const HomePage()
      },
    );
  }
}
