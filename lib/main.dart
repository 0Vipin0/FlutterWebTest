import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 880) {
            return Scaffold(
              appBar: AppBar(
                title: Text(""),
              ),
              drawer: Drawer(
                child: Column(
                  children: <Widget>[
                    Text("Text"),
                  ],
                ),
              ),
              body: Center(child: Text("This is less than 880")),
            );
          } else {
            return Scaffold(
              body: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color(0xFF012A5E),
                      height: 80,
                      child: Center(
                        child: Text(
                          "KOBONE",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      height: 80,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 20,),
                          Listener(
                            child :Text("NAME"),
                            onPointerDown: (context){
                              print("Vipin");
                            },
                          ),
                          SizedBox(width: 10,),
                          Text("DEALS"),
                          SizedBox(width: 20,),
                          Text("SHOP"),
                          SizedBox(width: 10,),
                          Text("CATEGORIES"),
                          SizedBox(width: 20,),
                          Text("PAGES"),
                          SizedBox(width: 10,),
                          Text("LATEST"),
                          SizedBox(width: 20,),
                          Text("CONTACT US"),
                          SizedBox(width: 10,),
                          Icon(Icons.search),
                          SizedBox(width: 10,),
                          Icon(Icons.lock_open),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
