import 'package:flutter/material.dart';
import 'package:todo_app/add_new_todo_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Todos',
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Todo title'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [const Text('Todo body'), const Text('time')],
              ),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete_forever_outlined)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTodoScreen(),
            ),
          );
        },
        backgroundColor: Colors.deepOrangeAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}
