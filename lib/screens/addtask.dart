// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todome/models/dataprovider.dart';

class Add_Task_Screen extends StatelessWidget {
  const Add_Task_Screen({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = TextEditingController();
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Text(
                "Add Task",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    onChanged: (value) {
                      Provider.of<DataClass>(context,listen: true).data = value;
                      
                    },
                    autofocus: true,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue, minimumSize: Size(300, 70)),
                  onPressed: () {},
                  child: Text(
                    "Add Message",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
