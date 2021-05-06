import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard()
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Id Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(ninjaLevel>10){
            setState(() {
              ninjaLevel -=1;
            });
          }
          else{
            setState(() {
              ninjaLevel += 1;
            });
          }
        },
        child: Icon( Icons.add,
        ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            Center(
              child: CircleAvatar(
                  child: Image.network('https://cdn3.iconfinder.com/data/icons/avatars-15/64/_Ninja-2-512.png'),
              radius: 40.0,),
            )

            ,
            Divider(height:90.0,
            color:Colors.grey),

            Text('NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0
            ),),
            SizedBox(height:10.0),
            Text("Chun-li",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.orange,
              ),

            ),
            SizedBox(height:30.0),
            Text('Current Ninja Level',
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0
              ),),
            SizedBox(height:10.0),
            Text('$ninjaLevel',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.orange,
              ),

            ),
            SizedBox(height:30.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],

                ),
                SizedBox(width: 10.0),
                Text("Chun-li@ninja.co.uk",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0
                  ),
                )
              ],
            )

          ],
        ),
      ),

    );
  }
}