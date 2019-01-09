import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
    {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Scrollable List")),
          body: Container(
            padding: const EdgeInsets.only(left: 10.0,right: 10.0),
            child: HomePage(),
          )
        ),
      );
    }
}
class HomePage extends StatefulWidget
{
  State createState() => HomePageState();
}
class HomePageState extends State<HomePage>
{
  @override
  Widget build(BuildContext context)
  {
    return ListView.builder(
      itemCount: 25,
      itemBuilder: (context,rowNumber){
        return Column(
          children: <Widget>[
            Image.network("https://i.ytimg.com/vi/Ten9h6R2x78/maxresdefault.jpg",),
            Text("This is the dummy ListView of 20 items and I know it looks AMAZING!",style: TextStyle(
              fontSize: 18.0,fontWeight: FontWeight.bold)
              ),
            Divider(color: Colors.black54,)
          ],
        );
      },
    );
  }
}