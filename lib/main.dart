import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorail/app-provider.dart';
import 'package:provider_tutorail/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AppProvider(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Provider"),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}
