import 'package:flutter/material.dart';
import 'package:to_do_hive/utility/ToDoTile.dart';
import 'package:to_do_hive/utility/dialogBox.dart';


class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  final _controller = TextEditingController();
  // list of todo tasks
  
  List toDoList = [
    ["task name",false],
    ["task name",false]

  ];
  void checkBoxChanged(bool? value,int index){
    setState(() {
      toDoList[index][1]=!toDoList[index][1];
    });
    Navigator.of(context).pop();

  }
  // save new task
  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
  }


  void creteNewTask(){
    showDialog(
      context: context, 
      builder: (context) {
        return dialogBox(
          onsave:saveNewTask,
          oncancel:()=> Navigator.of(context).pop(),
          controller: _controller,
        );
      },
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[300],
      appBar: AppBar(backgroundColor: Colors.yellow[700],
        title: Center(child: Text('TO DO',style: TextStyle(color: Colors.black),)),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: creteNewTask,backgroundColor: Colors.amber,
      child: Icon(Icons.add),),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) {
          return ToDoTile(
            taskName: toDoList[index][0],
            taskCompleted: toDoList[index][1], 
            onChanged: (value) => checkBoxChanged(value,index));
        },
        )
    );
  }
}