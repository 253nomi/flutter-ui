import 'package:flutter/material.dart';
class PatientList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
      
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height: size.height * 0.05),
             Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              Text(
                "Worthy Miles",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,
                color: Colors.red[200]),
              ),
              Icon(Icons.more_horiz),
            ],
          ),

          

        ]) 
        ,)
      
    );
  }
}