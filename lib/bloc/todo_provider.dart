import 'package:flutter/material.dart';
import 'todo_bloc.dart';
import '../repository/api.dart';

class TodoProvider extends InheritedWidget {
  // 자식 위젯에서 접근하기 위함
  final TodoBloc todoBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static TodoBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(TodoProvider) as TodoProvider)
          .todoBloc; // static으로 해서 1번만 초기화하도록 함.
  TodoProvider({Key key, TodoBloc todoBloc, Widget child})
      : this.todoBloc = todoBloc ?? TodoBloc(API()),
        super(child: child, key: key);
}
