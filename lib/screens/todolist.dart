import 'package:flutter/material.dart';
import 'package:todo_list/model/todoModel.dart';

class TodoListApp extends StatefulWidget {
  @override
  _TodoListAppState createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  List<Todo> todos = [
    Todo(title: 'Hello', description: 'Anurudha', isCompleted: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Todo List'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            subtitle: Text(todos[index].description),
            trailing: Checkbox(
              value: todos[index].isCompleted,
              onChanged: (bool? value) {
                setState(() {
                  todos[index].isCompleted = value!;
                });
              },
            ),
          );
        },
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => AddItemsInsideToDoList()),
      //     );
      //     // Navigate to a new screen to add a new todo
      //     // You can use Navigator.push to navigate to a new screen for adding todos
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
