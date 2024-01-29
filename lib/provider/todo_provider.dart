import 'package:flutter/material.dart';
import 'package:todo_list/model/todoModel.dart';

class ToDoListProvider with ChangeNotifier {
  String? titleP;
  String? descriptionP;
  void SaveDataToModel(String title, String description) {
    Todo(title: title, description: description, isCompleted: true);
    titleP = title;
    descriptionP = description;
    notifyListeners();
  }
}
