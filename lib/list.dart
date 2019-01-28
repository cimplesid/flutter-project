import 'package:flutter/material.dart';
import 'ChatHelper.dart';
import 'ChatItemModel.dart';

class Lists extends StatelessWidget {
 // int position = 0;
  //var name = [1,2,3];
  final String list = 's';
   buildbody(BuildContext context){
  for ( var i = 1 ; i < 5; i++ ) {
   ChatItemModel chatItem = ChatHelper.getChatItem(0);
   //ChatItemModel chatItem1 = ChatHelper.getChatItem(1);

        return
         Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_circle,
                    size: 64.0,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                chatItem.name,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0),
                        ),
                        Text(
                          chatItem.messageDate,
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Text(
                        chatItem.mostRecentMessage,
                        style: TextStyle(
                            color: Colors.black45, fontSize: 16.0),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Divider(),
    ],
  
  );}
  }
                
  
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
              onTap: (){Navigator.of(context).pushNamed('/home');},),
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
              }
               )

          ],
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("List"), centerTitle: true,backgroundColor: Colors.redAccent,actions: <Widget>[
        new IconButton(
          icon: new Icon(Icons.favorite),
        onPressed: () => print("liked"),
        )
        ],
        ),
        drawer: Drawer(
        elevation: 5.0,
        child: buildrawer(context),
      ),
      body: buildbody(context),

      
    );
  }
}