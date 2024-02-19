import 'package:flutter/material.dart';

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
        centerTitle: true,
        backgroundColor: Colors.cyan,
        title: Text(
          'Todos',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Todo title'),
              subtitle: Text('Todo body'),
              trailing: Wrap(children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              ],),
            );
          }),
    );
  }
}