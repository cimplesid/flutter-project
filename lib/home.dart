import 'package:flutter/material.dart';
//import 'package:path/path.dart';
import 'hometheme.dart';
class Homie extends StatelessWidget {
 // static String tag => 'login-page';
 //DateTime now = DateTime.now();
//String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
 

  Widget buildrawer(BuildContext context){
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
              onTap: (){Navigator.of(context).pushNamed('/list');},),
           ListTile(title: Text("List"),
           leading: Icon(Icons.menu),
              onTap: (){  Navigator.of(context).pushNamed('/list');},),
           ListTile(
             title: Text("Favourite"),
           leading: Icon(Icons.favorite),
              onTap: (){},),
           ListTile(title: Text("Profile"),
           leading: Icon(Icons.person),
              onTap: (){Navigator.of(context).pushNamed('/profile');},),
               ListTile(title: Text("Logout"),
           leading: Icon(Icons.airline_seat_legroom_reduced),
              onTap: (){  Navigator.of(context).pushNamed('/login');
},),
           // Navigator.of(context).pop();


          ],
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
   
      return Scaffold(

      appBar: AppBar(title: Text("Home"), centerTitle: true,backgroundColor: Colors.redAccent,actions: <Widget>[
        new IconButton(
          icon: new Icon(Icons.favorite),
        onPressed: () => Navigator.of(context).pushNamed('/profile'),
        )
        ],
        ),
        drawer: Drawer(
        elevation: 5.0,
        child: buildrawer(context),
      ),
      body: new Container(
      padding: new EdgeInsets.all(8.0),
      height: 250.0,
      child: new Stack(
        children: <Widget>[
          backgroundImage,
          new Container(
            padding: new EdgeInsets.all(10.0),
          child: new Align(
              alignment: Alignment.bottomLeft,
              child: onTopContent),),
        ],
      ),
    )
      );
      
     
      
    
  }
   final backgroundImage = new Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.6),
              BlendMode.luminosity),
          image: new NetworkImage("https://4.bp.blogspot.com/-L9CtV6gR8GI/WtgKA619aEI/AAAAAAAAF9c/CubtyZE94o076qCShJN_D2bdNiHoeIRxACEwYBhgL/s1600/cool%2Bprofile%2Bimages.png"),
          fit: BoxFit.cover,
        ),
      ),
  );



  final onTopContent = new Container(
    height: 80.0,
    child: new Column(mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text("Trending this week",
        style: bigHeaderTextStyle),

        new Text("The most popular restaurnts in town this week",
          style: descTextStyle),
        //new Container(),
        new Container(
          height: 2.0,
          width: 150.0,
          color: Colors.redAccent,
        ),
     
        new Text("2019/1/29 18:54:21",
          style: footerTextStyle),// new Text("2019/1/29 18:54:21",);
          //style: footerTextStyle),
        //new Container()
      ],
    ),
  );
  //var now = new DateTime.now();
}