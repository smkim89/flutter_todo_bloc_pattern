import 'dart:async';
import '../model/todo.dart';
import '../repository/api.dart';

class TodoBloc {
  final API api;
  StreamController<List<Todo>> ctrl = StreamController();

  Stream<List<Todo>> get results => ctrl.stream; // 바로 스트림에 접근하지 않기 위해 만들었습니다.
  TodoBloc(this.api);

  void dispose() {
    ctrl.close(); // 스트림은 안 쓸 때 닫아줘야합니다.
  }

  void getTodo() {
    api.getTodo().then((todos) {
      ctrl.add(todos);
    });
  }
}
