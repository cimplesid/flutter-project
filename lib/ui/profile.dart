import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        // backgroundColor: Colors.deepOrange,
        appBar: AppBar(
          title: Text(" Profile"),
          backgroundColor: Colors.greenAccent,
          elevation: 0,
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                 // stops: [0.5, 0.9],
                  colors: [
                    Colors.green,
                    Colors.blueGrey.shade300
                  ]
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.call, size: 30.0,),
                        minRadius: 30.0,
                        backgroundColor: Colors.red.shade600,),
                      CircleAvatar(
                        minRadius: 60,
                        backgroundColor: Colors.deepOrange.shade300,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('aa/2.jpg'),
                          minRadius: 50,

                        ),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.message, size: 30.0,),
                        minRadius: 30.0,
                        backgroundColor: Colors.red.shade600,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("cimplesid", style: TextStyle(fontSize: 22.0, color: Colors.white),),
                  Text("Kathmandu, Nepal", style: TextStyle(fontSize: 14.0, color: Colors.red.shade700),)
                ],
              ),
            ),
            Container(
              // height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.deepOrange.shade300,
                      child: ListTile(
                        title: Text("50k",textAlign: TextAlign.center, style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0
                        ),),
                        subtitle: Text("FOLLOWERS", textAlign: TextAlign.center, style: TextStyle(color: Colors.red),),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: ListTile(
                        title: Text("345",textAlign: TextAlign.center, style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0
                        ),),
                        subtitle: Text("FOLLOWING", textAlign: TextAlign.center, style: TextStyle(color: Colors.white70),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text("Email", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("sid@123r.com", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Phone", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("+977 9818225533", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Twitter", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("@joshisid12", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Facebook", style: TextStyle(color: Colors.deepOrange, fontSize: 12.0),),
              subtitle: Text("facebook.com/cimple.sid", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
          ],
        ),
      );
    }
}