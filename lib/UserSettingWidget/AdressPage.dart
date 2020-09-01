import 'package:flutter/material.dart';

import 'AdressCreate.dart';


class AdressInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Address Information",
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              color: Colors.white,
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    trailing: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.green[300],
                      ),
                      onPressed: () {
                        Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Addrescreate()));
                      },
                    ),
                    title: Text("My Home Address"),
                    subtitle: Text(
                        "300 CENTRAL PARK \nW #7K (From 7K To 7L )\n NEW YORK, NY 10024-7603, USA"),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}