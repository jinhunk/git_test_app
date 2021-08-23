// import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class Crud extends StatefulWidget {
  const Crud({Key? key}) : super(key: key);

  @override
  _CrudState createState() => _CrudState();
}

class _CrudState extends State<Crud> {
  String input = "";
  // createTodos() {
  //   FirebaseFirestore.instance.collection('crud 테스트중').add({'input': input});
  // }

  void showdialog() {
    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Add Todo'),
            content: Form(
              key: formkey,
              autovalidateMode: null,
              child: TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Task"),
                onChanged: (String value) {
                  input = value;
                },
              ),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {
                  // createTodos();
                  // print('crud 확인');
                  Navigator.pop(context);
                },
                child: Text('Add'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('crud 테스트'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: showdialog,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
