import 'package:flutter/material.dart';

class MySecondWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MySecondWidget> {

  String url = "https://source.unsplash.com/random/800x600";
              // A random image

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton(
                child: Text("Press Me"),
                onPressed: changeURL,
              ),
              Image.network(url)
            ]
          )
        )
      )
    );
  }

  void changeURL() {
    setState(() {
      url = "https://source.unsplash.com/random/800x600/?" +
          "q=${new DateTime.now().millisecondsSinceEpoch}";
    });
  }
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Text myText = Text("This is a nice photo!",
        textDirection: TextDirection.ltr);

    Image myImage = Image.network(
        "https://images.pexels.com/photos/1168940/pexels-photo-1168940.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My App")),
            body: Center(
              child: Column(
                children: <Widget>[myText, myImage],
                mainAxisSize: MainAxisSize.min
              ),
            )
        )
    );
  }
}

void main() {
    runApp(new MySecondWidget());
}
