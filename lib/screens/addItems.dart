import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/provider/todo_provider.dart';
import 'package:todo_list/screens/todolist.dart';

class AddItemsInsideToDoList extends StatefulWidget {
  const AddItemsInsideToDoList({super.key});

  @override
  State<AddItemsInsideToDoList> createState() => _AddItemsInsideToDoListState();
}

class _AddItemsInsideToDoListState extends State<AddItemsInsideToDoList> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Provider provider = Provider.of<ToDoListProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add ToDo Items'),
        backgroundColor: Colors.blue,
      ),
      body: Consumer<ToDoListProvider>(
        builder:
            (BuildContext context, ToDoListProvider provider, Widget? child) =>
                SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 100,
            ),
            Card(
                child: TextField(
              controller: _titleController,
            )),
            const SizedBox(
              height: 50,
            ),
            Card(
                child: TextField(
              controller: _descriptionController,
            )),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 137, 67, 23)),
                onPressed: provider.SaveDataToModel(
                    _titleController.text, _descriptionController.text),
                child: const Text('Add Tasks')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 122, 161, 167)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TodoListApp()),
                );
              },
              child: Text('View TODO'),
            )
          ]),
        ),
      ),
    );
  }
}
