import 'package:flutter/material.dart';
import 'package:to_do_hive/utility/my_button.dart';

class dialogBox extends StatelessWidget {
  final controller;
  VoidCallback  onsave;
  VoidCallback oncancel;
   dialogBox({super.key,
   required this.controller,
   required this.onsave,
   required this.oncancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(height: 120,
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller  ,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "add new task"
            ),
          ),Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              mybutton(
                text: "save", 
                onPressed: onsave
                ),
                mybutton(
                text: "cancel", 
                onPressed: oncancel
                )
            ],
          )
        ],
      ),
      ),
    );
  }
}