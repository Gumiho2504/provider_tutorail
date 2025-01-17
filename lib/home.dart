import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

import 'package:provider/provider.dart';
import 'package:provider_tutorail/app-provider.dart';
import 'package:provider_tutorail/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfefcff),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Consumer<AppProvider>(builder: (context, appProvider, child) {
                return Text("${appProvider.x} ");
              }),
              Spacer(),
              Text(
                "Total",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              GestureDetector(
                child: Container(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF716f72), width: 1)),
                ),
                onTap: () {
                  Provider.of<AppProvider>(context, listen: false).incrementX();
                  if (context.read<AppProvider>().x >= 5) {
                    Get.snackbar("Item", "Can not more than this",
                        backgroundColor: Colors.black,
                        colorText: Colors.white,
                        titleText: Text(
                          "Item",
                          style: TextStyle(fontSize: 40, color: Colors.white),
                        ),
                        messageText: Text(
                          "Can not be more than this",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ));
                  } else {
                    context.read<AppProvider>().incrementX();
                  }
                },
              ),
              Spacer(),
              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.to(() => SecondPage(),
                                transition: Transition.upToDown,
                                duration: Duration(seconds: 1));
                          },
                          child: Text(
                            "Next Page",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                      const Spacer(),
                      Icon(Icons.skip_next, color: Colors.white)
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
