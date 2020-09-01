import 'package:flutter/material.dart';
import 'package:shopapp/UserSettingWidget/AdressPage.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool _selectbill = false;
  bool _selectcontract = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Payment",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white12,
          elevation: 0,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  borderRadius: BorderRadius.circular(8),
                  shadowColor:Colors.white38,
                  color: Colors.white,
                  elevation: 8,
                  child: Container(
                    alignment: Alignment.center,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white54),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 8, bottom: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Delivery Adress",
                                style: TextStyle(
                                    color: Colors.orange.shade800,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                              IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.green,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AdressInformation()));
                                  })
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 8, top: 8),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.grey.shade300),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 8, left: 8),
                                  child: Text("Adrees Title"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 8, left: 8),
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black54,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Checkbox(
                                value: _selectbill,
                                checkColor: Colors.orange,
                                activeColor: Colors.white,
                                onChanged: (value) {
                                  setState(() {
                                    _selectbill = value;
                                  });
                                },
                              ),
                              Text(
                                "Send my bill the same adress",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  borderRadius: BorderRadius.circular(8),
                  shadowColor:Colors.white38,
                  color: Colors.white,
                  elevation: 8,
                  child: Container(
                    alignment: Alignment.center,
                    height: 260,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white54),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 8, bottom: 15, top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Cart Information",
                                style: TextStyle(
                                    color: Colors.orange.shade800,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1,
                        ),
                        Container(
                          height: 180,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, left: 20, top: 15),
                                child: Text("Card Number",
                                    style:
                                        TextStyle(color: Colors.grey.shade700)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, left: 20, bottom: 8, top: 8),
                                child: Container(
                                  height: 50,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade300),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        labelStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20, top: 8),
                                        child: Text("Last Use Date",
                                            style: TextStyle(
                                                color: Colors.grey.shade700)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20, top: 8),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              height: 40,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.grey.shade300),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 4),
                                                    child: Text(
                                                      "Month",
                                                      style: TextStyle(
                                                          color: Colors.grey),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 0),
                                                    child: Icon(
                                                      Icons.keyboard_arrow_down,
                                                      color: Colors.black54,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Container(
                                              height: 40,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.grey.shade300),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 4),
                                                    child: Text("Year",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.grey)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 0, left: 0),
                                                    child: Icon(
                                                      Icons.keyboard_arrow_down,
                                                      color: Colors.black54,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20, top: 8),
                                        child: Text("CVV",
                                            style: TextStyle(
                                                color: Colors.grey.shade700)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 20, left: 20, top: 8),
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.grey.shade300),
                                          child: TextField(
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  TextStyle(color: Colors.grey),
                                              border: InputBorder.none,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                   borderRadius: BorderRadius.circular(8),
                   shadowColor:Colors.white38,
                    color: Colors.white,
                    elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 10, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Checkbox(
                          value: _selectcontract,
                          checkColor: Colors.orange,
                          activeColor: Colors.white,
                          onChanged: (value) {
                            setState(() {
                              _selectcontract = value;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 4, left: 4),
                          child: Wrap(
                            children: <Widget>[
                              Text(
                                  "I have read and confirm \nthe preliminary informational jerseys")
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 48,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Total: \$ 270.10',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              OutlineButton(
                onPressed: () {},
                child: Text('Confrim'),
                borderSide: BorderSide(color: Colors.white),
                color: Colors.white,
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
