import 'package:flutter/material.dart';

 class NewTransaction extends StatelessWidget {

   final titleController = TextEditingController();
   final amountController = TextEditingController();

   @override
   Widget build(BuildContext context) {
     return Card(
       elevation: 5,
       child: Container(
         padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: <Widget>[
             TextField(
               autocorrect: true,
               decoration: InputDecoration(
                 labelText: 'Title',
               ),
               controller: titleController,
             ),
             TextField(
               autocorrect: true,
               decoration: InputDecoration(
                 labelText: 'Amount',
               ),
               controller: amountController,
             ),
             FlatButton(
               onPressed: () {
                 print(titleController.text);
                 print(amountController.text);
               },
               child: Text(
                 'Add Transaction',
                 style: TextStyle(color: Colors.purple),
               ),
             )
           ],
         ),
       ),
     );
   }
 }
 