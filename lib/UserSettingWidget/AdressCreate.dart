import 'package:flutter/material.dart';

class Addrescreate extends StatefulWidget {
  @override
  _Addrescreate createState() => _Addrescreate();
}

class _Addrescreate extends State<Addrescreate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Address",
          style: TextStyle(color: Colors.black87),
        ),
        elevation: 0,
        backgroundColor: Colors.white12,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
             Padding(
              padding: const EdgeInsets.all(14.0),
              child: Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Name',
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child:  Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Surname',
                            
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(14.0),
              child:  Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'City',
                            
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(14.0),
              child:  Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'District',
                            
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
           Padding(
              padding: const EdgeInsets.all(14.0),
              child:  Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Neighborhood',
                            
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child:  Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Mobile Phone',
                            
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 59,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Title',
                            
                            labelStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.green, width: 2)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20),
              child: Material(
                borderRadius: BorderRadius.circular(8),
                color: Colors.green,
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  splashColor: Colors.green[400],
                  onTap: () {Navigator.pop(context);},
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                        child: Text(
                      "Save",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}