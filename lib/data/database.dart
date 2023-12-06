import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference our box

  final _myBox = Hive.box('mybox');

  // run this if thi is the first time ever opening this app

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do the exercise", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updataDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
