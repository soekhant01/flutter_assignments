import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LoggerAssignment extends StatelessWidget {
  const LoggerAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton(onPressed: (){
                Logger.info("Your Info");
              }, style: FilledButton.styleFrom(backgroundColor: Colors.cyan, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),child: Text("info"),),
              FilledButton(onPressed: (){
                Logger.success("Operation Successful");
              },style: FilledButton.styleFrom(backgroundColor: Colors.lightGreen, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))), child: Text("success")),
              FilledButton(onPressed: (){
                Logger.warning("This is Warning");
              }, style: FilledButton.styleFrom(backgroundColor: Colors.amber, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),child: Text("warning")),
              FilledButton(onPressed: (){
                Logger.error("Something went wrong");
              },style: FilledButton.styleFrom(backgroundColor: Colors.redAccent, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))) ,child: Text("error"))
            ],
          ),
        ),
      ),
    );
  }

}

class Logger{
  static void info(String message){
      log("Info:");
      debugPrint('\x1B[30m$message\x1B[0m');
  }

  static void success(String message){
    log("Success:");
    debugPrint('\x1B[32m$message\x1B[0m');
  }

  static void warning(String message){
    log("Warning:");
    debugPrint('\x1B[33m$message\x1B[0m');
  }

  static void error(String message){
    log("Error:");
    debugPrint('\x1B[31m$message\x1B[0m');
  }
}
