import 'package:flutter/material.dart';
import 'package:todo_list/model/todoModel.dart';

class ToDoListProvider with ChangeNotifier {
  String? titleP;
  String? descriptionP;
  // ignore: non_constant_identifier_names
  SaveDataToModel(String title, String description) {
    print('method called');
    Todo(title: title, description: description, isCompleted: true);
    titleP = title;
    descriptionP = description;
    notifyListeners();
    print(titleP);
  }
}
