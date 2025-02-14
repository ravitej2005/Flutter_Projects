import 'package:flutter/material.dart';
import 'package:todo/taskObj.dart';

TextEditingController taskController = TextEditingController();
List TodoTasks = [];

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  void AddTask() {
    if (taskController.text.trim() != '') {
      setState(() {
        TodoTasks.add(Task(taskController.text));
      });
    }
    taskController.text = '';
  }

  void removeTask(int index) {
    setState(() {
      TodoTasks.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(0, 10),
            blurRadius: 17,
            spreadRadius: -10,
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: taskController,
                  onFieldSubmitted: (value) {
                    AddTask();
                  },
                  style: const TextStyle(fontSize: 14),
                  cursorHeight: 15,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFEDD7D7),
                    border: InputBorder.none,
                    constraints: BoxConstraints(maxHeight: 27),
                    contentPadding: EdgeInsets.only(bottom: 16, left: 15),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  AddTask();
                },
                icon: const Icon(Icons.add),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: TodoTasks.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 30,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      // contentPadding: const EdgeInsets.all(0),
                      leading: Checkbox(
                        side: BorderSide(
                          width: 2,
                        ),
                        activeColor: Color(0xFF50C2C9),
                        value: TodoTasks[index].status,
                        onChanged: (taskStatus) {
                          debugPrint("Hello");
                          setState(() {
                            TodoTasks[index].status = taskStatus;
                          });
                        },
                      ),
                      dense: true,
                      title: Text(
                        "${TodoTasks[index].task}",
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          decorationThickness: 3,
                          decoration: TodoTasks[index].status
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                          color: Colors.black,
                        ),
                      ),
                      trailing: TodoTasks[index].status
                          ? IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {
                                removeTask(index);
                              },
                              icon: Icon(
                                Icons.delete,
                                size: 20,
                              ),
                            )
                          : null,
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
