import 'package:disenios/widgets/background.dart';
import 'package:disenios/widgets/card_table.dart';
import 'package:disenios/widgets/custom_bottom_navigation_bar.dart';
import 'package:disenios/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String namePage = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Stack(children: const [
        BackgroundWidget(),
        _HomeBody(),
      ]),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [
        PageTittleWidget(),
        CardTable(),
      ]),
    );
  }
}
