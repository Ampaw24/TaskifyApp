import 'package:flutter/material.dart';
import 'package:todome/designs/colors.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        onTap: (){},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box,
          color: AppColor.tdBlue,
        ),
        title: Text(
          "Check Mail",
          style: TextStyle(
            decoration: TextDecoration.lineThrough,
            color: AppColor.tdBlack, 
            fontSize: 16),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
    
          height: 40,
          width: 40,
          decoration: BoxDecoration(
          color: AppColor.tdRed,
          borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
            iconSize: 20,
           onPressed: (){},
           icon: Icon(Icons.delete,),
            color: Colors.white,),
        ),
      ),
    );
  }
}
