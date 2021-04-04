import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //Inside Scaffold we have different properties
          appBar: AppBar(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text("Darshan Here"),
            centerTitle: true,
            backgroundColor: Colors.cyan[600],
          ),
          body: Center(
              //child: Image.asset('assets/Kobe.jpg')
              child:
                  //************* Elevated Button with text and Color */
                  ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.mail),
            label: Text("mail me"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
            ),
          )
              //     ElevatedButton(
              //   child: Text("Press Me"),
              //   // Icon(Icons.add_a_photo_outlined),
              //   autofocus: true,
              //   style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all<Color>(Colors.purple),
              //   ),
              //   onPressed: () {},
              // )
              //************************Icons Demo */
              //     Icon(
              //   Icons.airport_shuttle,
              //   size: 80,
              //   color: Colors.lightBlue[200],
              // )

              //Image.network(
              //  'https://cdn.pixabay.com/photo/2015/11/04/20/59/milky-way-1023340_1280.jpg'),

              // image: NetworkImage(
              //     'https://cdn.pixabay.com/photo/2015/11/04/20/59/milky-way-1023340_1280.jpg'),

              // image: AssetImage('assets/Kobe.jpg'),

              // Text(
              //   "Hello Darshan",
              //   style: TextStyle(
              //       fontSize: 20.0,
              //       fontWeight: FontWeight.bold,
              //       fontFamily: "PressStart2P",

              //       //shadows: Shadow.convertRadiusToSigma(radius),
              //       letterSpacing: 1.2,
              //       color: Colors.blue[400],
              //       shadows: [
              //         Shadow(
              //           color: Colors.blue.shade900.withOpacity(0.5),
              //           offset: Offset(-2, 30.0),
              //           blurRadius: 10.0,
              //         ),
              //       ]),
              // ),

              ),
          bottomNavigationBar: BottomAppBar(
              child: Row(
            children: [
              IconButton(icon: Icon(Icons.menu_open), onPressed: () {}),
              Spacer(),
              IconButton(icon: Icon(Icons.search), onPressed: () {}),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ],
          )),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        ));
  }
}
