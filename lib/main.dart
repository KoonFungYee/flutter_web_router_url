import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:router_url/first_page..dart';
import 'package:router_url/second_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/first",
      debugShowCheckedModeBanner: false,
    ).modular();
  }
}

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/first', child: (_, __) => FirstPage()),
    ChildRoute('/second',
        child: (_, args) => SecondPage(id: args.queryParams['id'])),
  ];
}
