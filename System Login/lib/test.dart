import 'package:flutter/material.dart';
import 'package:systel_assignment_mohamed/repository/local%20data%20repository/local_db.dart';
class TEST extends StatelessWidget {
  const TEST({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(38.0),
        child: ElevatedButton(
          onPressed: ()async{
            SqlDb sqlDb=SqlDb();
            for(int i =0; i<4;i++){

             sqlDb.mydeleteDatabase();

            }
          },
          child: const Text('aa'),
        ),
      ),
    );
  }
}
