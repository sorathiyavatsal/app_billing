import 'package:billing/billInfo.dart';
import 'package:flutter/material.dart';  
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('User Information'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new TextFormField(
                keyboardType: TextInputType.text, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'john',
                  labelText: 'Name'
                )
              ),
              new TextFormField(
                keyboardType: TextInputType.number, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: '+91 8585968596',
                  labelText: 'Mobile Number'
                )
              ),
              new TextFormField(
                keyboardType: TextInputType.emailAddress, // Use email input type for emails.
                decoration: new InputDecoration(
                  hintText: 'you@example.com',
                  labelText: 'E-mail Address'
                )
              ),
              new TextFormField( 
                keyboardType: TextInputType.text,// Use secure text for passwords.
                decoration: new InputDecoration(
                  hintText: 'Address',
                  labelText: 'Enter your Address'
                )
              ),
              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child: new Text(
                    'Next',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BillPage()),
                    );
                  },
                  color: Colors.blue,
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}