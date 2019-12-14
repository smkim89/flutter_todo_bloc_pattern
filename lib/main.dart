import 'package:flutter/material.dart';
import 'ui/todo_page.dart';
import 'bloc/todo_provider.dart';
import 'bloc/todo_bloc.dart';
import 'repository/api.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return TodoProvider(
      todoBloc: TodoBloc(API()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: TodoPage(),
      ),
    );
  }
}
