class TodoModel {
  String name;
  bool checked;

  TodoModel(this.name, this.checked);

  @override
  String toString() {
    return 'TodoModel{name: $name, checked: $checked}';
  }
}
