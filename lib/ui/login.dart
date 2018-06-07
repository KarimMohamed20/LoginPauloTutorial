import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginFormState();

}

class LoginFormState extends State<LoginForm>{
  final TextEditingController _userControl = new TextEditingController();
  final TextEditingController _passwdControl = new TextEditingController();
  String showUsername = "";

  @override
  Widget build(BuildContext context){
    // To Clear The Login Forms
    void _erase(){
      setState(() {
              _userControl.clear();
              _passwdControl.clear();
      });
    }
    // To Show Name Of User
    void _showWelcome(){
      setState(() {
         if(_userControl.text.isNotEmpty && _passwdControl.text.isNotEmpty){
           showUsername = _userControl.text;
         }
      });
    }
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login Form"),
        centerTitle: true,
        backgroundColor: Colors.red,
        elevation: 1.0,
      ),
      body: new Container(
        child: new ListView(
            children: <Widget>[
          new Image.asset('lib/images/face.png',width: 90.0,height: 90.0,color: Colors.white70,),
          new Container(
            height: 180.0,
            width: 380.0,
            color: Colors.white,
            child: new Column(
          children: <Widget>[
            new TextField(
      controller: _userControl,
      decoration: new InputDecoration(
        hintText: 'Username',
        icon: new Icon(Icons.person)
      ),
            ),
            new TextField(
      controller: _passwdControl,
      decoration: new InputDecoration(
        hintText: 'Password',
        icon: new Icon(Icons.lock)
      ),
      obscureText: true,
            ),
            new Padding(padding: new EdgeInsets.all(10.0),),
            new Center(
      child: new Row(
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(left: 38.0),
            child: new RaisedButton(
              onPressed: _showWelcome,
              color: Colors.redAccent,
              child: new Text(
                "Login",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 17.0
                ),
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(left: 120.0),
            child: new RaisedButton(
              onPressed: _erase,
              color: Colors.redAccent,
              child: new Text(
                "Clear",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 17.0
                ),
              ),
            ),
          ),
          
        ],
      ),
            ),
          ],
            ),
          ),
          Padding(padding: EdgeInsets.all(14.0),),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
          new Text("Welcome, $showUsername",
          style: new TextStyle(color: Colors.white,fontSize: 19.5,fontWeight: FontWeight.w500))
          ],
          ),
            ],
          ),
        ),  
      backgroundColor: Colors.blueGrey,
    );
  }
  }

