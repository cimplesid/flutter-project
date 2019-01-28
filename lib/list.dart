import 'package:flutter/material.dart';
import 'home.dart';

class Lists extends StatelessWidget {
  Widget buildrawer(){
    return Drawer(
        
        child: ListView(
          
          children: <Widget>[
            DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red
          ),
          child: Image.asset('aa/dd.PNG'),
          
        ),
            ListTile(
              
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: (){},),
           ListTile(title: Text("Menu"),
           leading: Icon(Icons.menu),
              onTap: (){},),
           ListTile(
             title: Text("Favourite"),
           leading: Icon(Icons.favorite),
              onTap: (){},),
           ListTile(title: Text("Profile"),
           leading: Icon(Icons.person),
              onTap: (){},),
            

          ],
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("Awesome app"), centerTitle: true,backgroundColor: Colors.redAccent,actions: <Widget>[
        new IconButton(
          icon: new Icon(Icons.favorite),
        onPressed: () => print("liked"),
        )
        ],
        ),
        drawer: Drawer(
        elevation: 5.0,
        child: buildrawer(),
      ),


      
    );
  }
}