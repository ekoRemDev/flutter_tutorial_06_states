import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Application();
  }
}

class Application extends StatefulWidget {
  ApplicationState createState() => new ApplicationState();
}

class ApplicationState extends State<Application> {
  String text = '';


  @override
  void initState() {
      text = "Created and please clickon this button";
      super.initState();
  }

  ClickMe() {
      setState(() {
          text = 'You Clicked on me';
      });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'App Title',
      home: Scaffold(
          appBar: AppBar(
            title: Text('App Bar Title'),
          ),
          body: Center(
            child: RaisedButton(

              onPressed: (){
                  ClickMe();
              },
                child: Text(text),
              color: Colors.green[200],
            ),
          )),
    );
  }


}
