import 'package:flutter/material.dart';


class Chats extends  StatefulWidget
{
  State createState() => ChatsState();
}
class ChatsState extends State<Chats>
{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 0.0),
      child: ListView.builder(
        itemCount: 25,
        itemBuilder: (context,index){
          return ListTile(
            leading: Image.network("https://randomuser.me/api/portraits/women/40.jpg",height: 60.0,),
            title: Text("Some Random User Name"),
            subtitle: Text("online",style: TextStyle(color: Colors.greenAccent,fontStyle: FontStyle.italic),),

          );
        },
      ),
    );
  }
}

