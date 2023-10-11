import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)?onChanged;

   ToDoTile({
    super.key,
  required this.taskName,
  required this.taskCompleted,
  required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged)

            ,Text(
              taskName
              ),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),

      ),
    );
  }
}