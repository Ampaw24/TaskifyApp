import 'package:flutter/material.dart';
import 'package:todome/designs/colors.dart';
import 'package:todome/widget/todoitems.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.tdBgcolor,
      appBar: AppBar(
        backgroundColor: AppColor.tdBgcolor,
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu,color: AppColor.tdBlack,size: 30,),
            Container(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(25),
                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/dyon.JPG'),
              ),
            )
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
   
        child: Column(
          children: [
        _SearchBox(),
        Expanded(
          child: ListView(
            
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50,bottom: 20),
                child: Text("All Todo's", style: TextStyle(
                  color: AppColor.tdBlack,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              TodoItem(),
              TodoItem(),
              TodoItem(),
              TodoItem(),
              TodoItem(),
            ],
          ),
        )

          ],
        ),
      ),
    );
  }
}

class _SearchBox extends StatelessWidget {
  const _SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search,size: 20,color: AppColor.tdBlack,),
          border: InputBorder.none,
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            maxWidth: 20,
          ),
          hintText: "Search",
          hintStyle: TextStyle(color: AppColor.tdBlack),
        ),
      ),
    );
  }
}
