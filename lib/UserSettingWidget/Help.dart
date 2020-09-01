import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          ExpansionTile(
            leading:IconButton(icon: 
          Icon(Icons.arrow_right,
          size: 40,),
          color: Colors.black, onPressed: () {  },
          ),
            title: Text(
              "Why havent't received my order?",
              style: TextStyle(),
            ),
            children: <Widget>[
             ListTile(
                    title: Text('data'),
                  )
            ],
          ),
          ExpansionTile(
            leading:IconButton(icon: 
          Icon(Icons.arrow_right,
          size: 40,),
          color: Colors.black, onPressed: () {  },
          ),
            title: Text(
              "Where is my refund?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ListTile(
                    title: Text('data'),
                  )
            ],
          ),
          ExpansionTile(
            leading:IconButton(icon: 
          Icon(Icons.arrow_right,
          size: 40,),
          color: Colors.black, onPressed: () {  },
          ),
            title: Text(
              "How to cancel my order?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ListTile(
                    title: Text('data'),
                  )
            ],
          ),
          ExpansionTile(
            leading:IconButton(icon: 
          Icon(Icons.arrow_right,
          size: 40,),
          color: Colors.black, onPressed: () {  },
          ),
            title: Text(
              "How to solve paymnet issue?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ListTile(
                    title: Text('data'),
                  )
            ],
          ),
          ExpansionTile(
            leading:IconButton(icon: 
          Icon(Icons.arrow_right,
          size: 40,),
          color: Colors.black, onPressed: () {  },
          ),
            title: Text(
              "How to contact seller by öessage?",
              style: TextStyle(),
            ),
            children: <Widget>[
              ListTile(
                    title: Text('data'),
                  )
            ],
          ),
        ],
      ),
    );
  }
}