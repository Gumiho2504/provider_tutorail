import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorail/app-provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    return Column(
      children: [
        Text(appProvider.number.toString()),
        Text(appProvider.number1.toString()),
        IconButton(onPressed: appProvider.sayHello, icon: Icon(Icons.add))
      ],
    );
  }
}
