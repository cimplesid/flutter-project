import 'package:flutter/material.dart';
import 'package:path/path.dart';
class Homie extends StatelessWidget {
 // static String tag => 'login-page';

 

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
      
      body:  Container(
        padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.note),
              SizedBox(width: 10.0,),
              Text("Welcome to Lesson 2",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          SizedBox(height: 20.0,),
          Text("Here we will learn to add sider drawer to our app"),
          SizedBox(height: 10.0,),
          RichText(
            text: TextSpan(
              
              
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20.0,),
          Text("Above I am showing how we can use RichText widget to show text with multiple styles."),
          SizedBox(height: 20.0,),
          Text("In this lesson I am also demonstrating how we can break down different tasks in a widget into multiple functions to make code more manageable."),
          SizedBox(height: 20.0,),
          Text("Using the button below, you can open the drawer navigation. It is here to demonstrate how to programmatically open drawer."),
          SizedBox(height: 10.0,),
          Builder(
            builder: (BuildContext context) => RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text("Open Drawer"),
              onPressed: () => Scaffold.of(context).openDrawer(),
            )
          ),
          
        ],
      ),
    )
  
         
      );
    
  }
}