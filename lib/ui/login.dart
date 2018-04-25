import 'package:flutter/material.dart';
import 'dashboard.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget>createState(){
    return new MakeLoginState();
  }
}

class MakeLoginState extends State<Login>{
  
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();
  void _loginPressed(){
    setState(() {
      if (_userController.text.isNotEmpty  && _passwordController.text.isNotEmpty) {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new DashBoard()),
        );
      }else{
        var alert = new AlertDialog(
          title: new Text("Sign in Error"),
          content: new Text("There was an error signing in. Please try again."),
        );
        showDialog(context: context,builder: (context) => alert);
      }
    });
  }  
  void _cancelPressed(){
    setState(() {
          _userController.clear();
          _passwordController.clear();
    });
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("LOGIN"),
          backgroundColor: Colors.blueGrey.shade900,
        ),
        backgroundColor: Colors.blueGrey.shade100,
        body: new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.all(20.0),
          child: new ListView(
            children: <Widget>[
              //image logo
              new Image.asset(
                "images/logotwin.png",
                width: 200.0,
                height: 200.0,
                color: Colors.blueGrey.shade500,
                ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new Container(
                height: 182.0,
                width: 380.0,
                padding: new EdgeInsets.all(20.0),
                color: Colors.grey.shade50,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _userController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: new InputDecoration(
                        hintText: "EMAIL",
                        icon: new Icon(Icons.email),
                      ),
                    ),

                    new TextField(
                      controller: _passwordController,
                      decoration: new InputDecoration(
                        hintText: "PASSWORD",
                        icon: new Icon(Icons.security),
                      ),
                      obscureText: true,
                    ),

                    new Padding(
                      padding: new EdgeInsets.all(10.0),
                    ),

                    new Center(
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          new FlatButton(
                            color: Colors.blueAccent.shade200,
                            textColor: Colors.white70,
                            onPressed: _loginPressed,
                            child: new Text(
                              "LOGIN",
                            ),
                          ),

                          new Padding(
                            padding: new EdgeInsets.all(15.0),
                          ),

                          new FlatButton(
                            color: Colors.red.shade200,
                            textColor: Colors.white70,
                            onPressed: _cancelPressed,
                            child: new Text(
                              "CANCEL",
                            ),
                          ),

                        ],
                      ),
                      
                    ),

                  ],
                ),
              ),

              new Padding(
                padding: new EdgeInsets.all(15.0),
              ),

              new Center(
                child: new Text("Copy Right 2018 by Twinsynergy Co., Ltd.",
                style: new TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 14.0,
                ),
                ),
              ),

            ],
          ),

        ),
    );
  }
}