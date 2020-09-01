import 'package:flutter/material.dart';

class NotificationCard extends StatefulWidget {
 final String notificationtitle;
  final String notificationcontext;
    final String notificationdate;
     final String productimage;

  const NotificationCard({Key key, this.notificationtitle, this.notificationcontext, this.notificationdate, this.productimage}) : super(key: key);

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(8),
        shadowColor:Colors.white38,
        color: Colors.white,
        elevation: 8,
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
           alignment: Alignment.centerLeft,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8)

           ),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Image.asset(
                    "assets/${widget.productimage}",
                    fit: BoxFit.fill,
                    height: 100,
                    width:80,
                  ),
               ),
               Expanded(
                 child: Container(
                   height: 130,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       Padding(
                         padding: const EdgeInsets.all(8),
                         child: Text("${widget.notificationtitle}",style: TextStyle(color:Colors.black,fontWeight: FontWeight.w700,fontSize: 20),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 8,right: 8,),
                         child: Wrap(children: <Widget>[Text("${widget.notificationcontext}",style: TextStyle(color:Colors.black,),)],),
                       ),
                       Padding(
                         padding: const EdgeInsets.all(8),
                         child: Text("${widget.notificationdate}",style: TextStyle(color:Colors.grey,),),
                       ),
                     ],
                   ),
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 130,
                   width: 30,
                   child: IconButton(icon: Icon(Icons.cancel), onPressed: (){}),
                 ),
               )
             ],
           ),),
       );
    
  }
}