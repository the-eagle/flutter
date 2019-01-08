import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Calculator")),
        body: HomePage(),
      )
    );
  }
}


class HomePage extends StatefulWidget
{
  State createState() => HomePageState(); 
}
class HomePageState extends State<HomePage>
{

  var num1 = 0,num2 = 0;
  var res = 0;

  TextEditingController t1 = TextEditingController(text: '');
  TextEditingController t2 = TextEditingController(text: '');

  

  @override
  Widget build(BuildContext context) 
  {
    return Container(
    
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Output : $res",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
            ),
            TextField(
              style: TextStyle(fontSize: 15.0,color: Colors.black),
              controller: t1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter First Number"),
            ),
            TextField(
              controller: t2,
              style: TextStyle(fontSize: 15.0,color: Colors.black),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Second Number"),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){
                    setState(() {
                                          num1 = int.parse(t1.text);
                                          num2 = int.parse(t2.text);
                                          res = num1 + num2;
                                        });
                  },
                  color: Colors.greenAccent,
                  child: Text("+",style: TextStyle(fontSize: 25.0)),
                ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                                          num1 = int.parse(t1.text);
                                          num2 = int.parse(t2.text);
                                          res = num1 - num2;
                                        });
                  },
                  color: Colors.greenAccent,
                  child: Text("-",style: TextStyle(fontSize: 25.0)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){
                    setState(() {
                                          num1 = int.parse(t1.text);
                                          num2 = int.parse(t2.text);
                                          res = num1 * num2;
                                        });
                  },
                  color: Colors.greenAccent,
                  child: Text("*",style: TextStyle(fontSize: 25.0)),
                ),
                MaterialButton(
                  onPressed: (){
                    setState(() {
                                          num1 = int.parse(t1.text);
                                          num2 = int.parse(t2.text);
                                          res = num1 ~/ num2;
                                        });
                  },
                  color: Colors.greenAccent,
                  child: Text("/",style: TextStyle(fontSize: 25.0),)
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                  onPressed: (){
                    setState(() {
                                          num1 = 0;
                                          num2 = 0;
                                          res = 0;
                                          t1.text = "";
                                          t2.text = "";
                                        });
                  },
                  color: Colors.greenAccent,
                  child: Text("Clear",style: TextStyle(fontSize: 25.0),)
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}