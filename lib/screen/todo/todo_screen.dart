import 'package:flutter/material.dart';
import 'package:smwu_202508/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {

  List<TodoModel> todoList = [
    TodoModel("산책", true),
    TodoModel("저녁", false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Todo")),
      body: Column(
        children: [
          Row(
            children: [
              /// 현재 주어진 영역의 빈 공간을 최대한 채우는 위젯
              Expanded(child: TextFormField()),
              TextButton(onPressed: () {}, child: Text("등록")),
            ],
          ),

          /// Column 안에 스크롤이 있는 위젯이 있는 경우
          /// 높이 값을 설정 해줘야 함.
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                var model = todoList[index];

                /// 1. checkbox를 선택 했을 때 checked 값을 변경하고 화면 갱신
                /// 2. delete button을 클릭해서 클릭한 todoModel 제거
                return Row(
                  children: [
                    Checkbox(value: model.checked, onChanged: (value) {

                    }),
                    Expanded(child: Text(model.name)),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.delete)),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return Container(height: 2, color: Colors.grey);
              },
              itemCount: todoList.length,
            ),
          ),
        ],
      ),
    );
  }
}
