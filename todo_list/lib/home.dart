import 'package:flutter/material.dart';

List ToDoList = [];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 125, 255, 192),
      appBar: AppBar(
        title: Text("TODO List"),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(10),
                    ),
                    controller: nameController,
                    onFieldSubmitted: (value) {
                      debugPrint(value);
                      if (value != "") {
                        setState(() {
                          ToDoList.add(value);
                        });
                        nameController.text = "";
                      }
                    },
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(100, 50)),
                  ),
                  onPressed: () {
                    if (nameController.text != "") {
                      setState(() {
                        ToDoList.add(nameController.text);
                      });
                      nameController.text = "";
                    }
                  },
                  child: Text("Add Task"),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ToDoList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      tileColor: Colors.white,
                      leading: Text("${ToDoList[index]}"),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            ToDoList.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete_sharp),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
