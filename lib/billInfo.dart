import 'dart:html';

import 'package:flutter/material.dart';
class BillPage extends StatefulWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BillPageState();
}


class _BillPageState extends State<BillPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String dropdownvalue1 = 'Living';   
  String dropdownvalue2 = 'Sofa';
  // List of items in our dropdown menu
  var items1 = [    
    'Living',
    'Bed Room',
    'Guest Room'
  ];
  var items2 = [    
    'Sofa',
    'Curtain',
    'Mattress',
    'Back Bkack'
  ];
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Bill Information'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              new DropdownButton(
                
              // Initial Value
              value: dropdownvalue1,
                
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),    
                
              // Array list of items
              items: items1.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue1 = newValue!;
                });
              },
            ),
              new DropdownButton(
                
              // Initial Value
              value: dropdownvalue2,
                
              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),    
                
              // Array list of items
              items: items2.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) { 
                setState(() {
                  dropdownvalue2 = newValue!;
                });
              },
            ),  
              new TextFormField(
                  keyboardType: TextInputType.text, // Use email input type for emails.
                  decoration: new InputDecoration(
                    hintText: 'Design note',
                    labelText: 'Note'
                  )
                ), 
                new TextFormField(
                  keyboardType: TextInputType.text, // Use email input type for emails.
                  decoration: new InputDecoration(
                    hintText: 'Size note',
                    labelText: 'Note'
                  )
                ), 
                new TextFormField(
                  keyboardType: TextInputType.text, // Use email input type for emails.
                  decoration: new InputDecoration(
                    hintText: 'Design note',
                    labelText: 'Note'
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
                    Navigator.pop(context);
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