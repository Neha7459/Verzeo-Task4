import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  @override
  _AddressScreenState createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    //final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          //actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
          title: Text('Add Address'),
          backgroundColor: Colors.indigo.shade600),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(25.0, 40.0, 25.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Name',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.indigo.shade600,
                  //fontFamily: 'IndieFlower'
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Full name",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Address',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.indigo.shade600,
                  //fontFamily: 'IndieFlower'
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "House no./Building name*",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Locality',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.indigo.shade600,
                  //fontFamily: 'IndieFlower'
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Area name",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'City',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.indigo.shade600,
                  //fontFamily: 'IndieFlower'
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Town/Village/City",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Pincode',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.indigo.shade600,
                  //fontFamily: 'IndieFlower'
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade300))),
                child: TextField(
                  autofocus: false,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter pincode",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              SizedBox(
                height: 200,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  //alignment: Alignment.bottomCenter,
                  //margin: EdgeInsets.only(top: screenHeight / 2.8),
                  child: Center(
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  height: 60.0,
                  //width: 500.0,
                  decoration: BoxDecoration(
                    color: Colors.indigo.shade600,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
