import 'dart:html';

final InputElement toDoInput = querySelector('#to-do-input') as InputElement;
final UListElement toDoList = querySelector('#to-do-list') as UListElement;

void main() {
  toDoInput.onChange.listen(newTodoElement);
}

void newTodoElement(Event e) {
  final newTodo = LIElement()..text = toDoInput.value;
  // toDoInput.value = 'ada';
  toDoList.children.add(newTodo);
}
