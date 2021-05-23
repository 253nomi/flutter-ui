import 'package:flutter/material.dart';
import 'package:flutter_hassam_ui/profileScreen.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
              child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 20),
                IconButton(
                    icon: Icon(
                      Icons.list,
                      color: Colors.black,
                    ),
                    onPressed: null),
                SizedBox(width: size.width * 0.50),
                GestureDetector(
                  child: Container(
                    width: size.width * 0.20,
                    height: size.width * 0.27,
                    margin: EdgeInsets.only(
                      top: 20,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  onTap: (){
                        Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );

                  } ,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Hello Hafeez,",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Good morning",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400]),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Container(
                width: size.width * 0.8,
                height: size.height * 0.18,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Text(
                            "Your Weekly",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Row(children: [
                            Text(
                              "Progress",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Icon(Icons.local_fire_department,
                            color:Colors.yellow[700],)
                          ]),
                        ]),
                        Container(
                          width: size.width * 0.18,
                          height: size.height * 0.07,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[

                              Icon(Icons.chevron_right,
                              color: Colors.black12,
                              size: 20,),
                                Icon(Icons.chevron_right,
                              color: Colors.black26,
                              size: 25,),
                                Icon(Icons.chevron_right,
                              color: Colors.black38,
                              size: 30,)

                              ]
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),
             Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Today's Workouts",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

             SizedBox(height: 20),

             WorkOutContent(
              imagePath: "assets/images/treadmill.svg", 
            size: size,
             text1: "TreadMill",
             text2: "30min",
             icon: Icons.check_circle_sharp),

             SizedBox(height: 10),

             ContentPart2(
               text: "50",
             ),
              WorkOutContent(
              imagePath: "assets/images/dumbbell.svg", 
            size: size,
             text1: "Running",
             text2: "15min",
             icon: Icons.adjust),

             SizedBox(height: 10),

             ContentPart2(
               text: "50",
             ),

               WorkOutContent(
              imagePath: "assets/images/skipping-rope.svg", 
            size: size,
             text1: "Cycling",
             text2: "15min",
             icon: Icons.adjust),

             SizedBox(height: 10),

             ContentPart2(
               text: "50",
             ),

          ],
        ),
      ),
    );
  }
}

class ContentPart2 extends StatelessWidget {
  const ContentPart2({
    Key key,
    @required this.text,
  }) : super(key: key);

   final String text;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children:[
        Icon(Icons.brightness_1,
        color: Colors.yellow[700],),
         Text(text,
            style: TextStyle(
              color: Colors.yellow[700],
           fontSize: 12, 
         ),),
        SizedBox(width: 60),
      ]
    );
  }
}

class WorkOutContent extends StatelessWidget {
  const WorkOutContent({
    Key key,
    @required this.size,
     @required this.text1,
     @required this.text2,
       @required this.icon,
      @required this.imagePath,
  }) : super(key: key);

  final Size size;
  final String text1;
   final String text2;
   final IconData icon;
   final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:[
       Icon(this.icon, size: 20,
       color: Colors.indigo,),
        
     Container(
         width: size.width*0.6,
         height: size.height*0.1,
        decoration: BoxDecoration(
                   color: Colors.white,
                   border: Border.all(
                     color: Colors.black26
                   ),
                   borderRadius: BorderRadius.circular(15),
                 ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
         Container(
         width: 20,
         height: 20,
         child: SvgPicture.asset(
           this.imagePath,
           color:Colors.yellow[700],
         ),
       ),
       Text(text1,
       style: TextStyle(
         fontWeight: FontWeight.bold,
         fontSize: 15, 
       ),),
         Text(text2,
          style: TextStyle(
            color:Colors.yellow[700],
         fontSize: 15, 
       ),),

         ]
       )

         
     ),

      ],
      
    );
  }
}
