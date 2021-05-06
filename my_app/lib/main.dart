import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    home: Home() ,
));



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[Text('Aditya'
            ),
              Container(
                child: Text('Shivaji'),
                padding: EdgeInsets.all(20.0),
              ),
              RaisedButton(onPressed: (){},
                child: Text('Mali'),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                child: Image.network('https://images.unsplash.com/photo-1619867056190-d86aaf07a1c9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
                padding: EdgeInsets.fromLTRB(0, 50.0, 0, 0),
                width: 300.0,
                height: 200.0,
              )
            
            ],
          ),
        ],
      )
    );
  }
}
