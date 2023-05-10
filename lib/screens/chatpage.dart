import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todome/models/chatdata.dart';
import 'package:todome/provider/chatprovider.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chaa = Provider.of<chat>(context);
    final chat_list = chaa.meschat;
    final String message = "";
    final String chatName = " ";

    return Scaffold(
    
      appBar: AppBar(
        title: Text(
          "ChatIo",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 20),
            itemCount: chat_list.length,
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                    chat_list[index].title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Color.fromARGB(255, 17, 130, 235),
                    child: Center(
                      child: Text(
                        chat_list[index].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  subtitle: Text(chat_list[index].message),
                  trailing: CircleAvatar(
                    radius: 15,
                    backgroundColor: Color.fromARGB(255, 243, 116, 107),
                    child: Text(
                      chat_list[index].counts.toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )),
      ),
        floatingActionButton: FloatingActionButton(
        tooltip: "Add Chat",
        backgroundColor: Colors.blue,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Center(
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: [
                          Divider(),
                          SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              value = chatName;
                            },
                            decoration: InputDecoration(
                              labelText: "Enter Chat Name",
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          TextFormField(
                            onChanged: (value) {
                              value = message;
                            },
                            decoration: InputDecoration(
                              labelText: "Enter Chat Message",
                            ),
                          ),
                          InkWell(
                            onTap: (){
                               Provider.of<chat>(context)
                                  .addChat(chatName, message,);
                              Navigator.pop(context);
                            },
                            child: Container(
                              child: Center(
                                child: Text(
                                  "Add Detail",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                              margin: const EdgeInsets.only(top: 30),
                              width: 300,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }
}
