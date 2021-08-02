import 'package:flutter/material.dart';
import 'package:meapp/login_screen.dart';
import 'package:meapp/register_screen.dart';

class Wrapper extends StatelessWidget {
  //const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(25.0, 70.0, 25.0, 50.0),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/backgrounds/bg3.jpg"),
        fit: BoxFit.fill,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(50.0),
            height: 250.0,
            //color: Colors.grey,
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      image: DecorationImage(
                          image: AssetImage('assets/backgrounds/bg3.jpg'),
                          fit: BoxFit.cover)),
                )),
                Positioned(
                    child: Container(
                  child: Center(
                    child: Text(
                      "ME",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 95.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
              ],
            ),
          ),
          SizedBox(
            height: 85.0,
          ),
          Center(
            child: Text(
              'Hi there!',
              style: TextStyle(
                  color: Colors.white, fontSize: 20.0, letterSpacing: 2.0),
            ),
          ),
          Center(
            child: Text(
              'Welcome to MeApp',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }));
            },
            child: Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.indigo.shade600,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: 60.0,
              //width: 500.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.indigo.shade600,
                        blurRadius: 15.0,
                        offset: Offset(10, 10))
                  ]),
            ),
          ),
          //Padding(padding: EdgeInsets.only(top: 30.0)),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegisterScreen();
              }));
            },
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Center(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.indigo.shade600,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              height: 60.0,
              //width: 500.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.indigo.shade600,
                        blurRadius: 15.0,
                        offset: Offset(10, 10))
                  ]),
            ),
          )
        ],
      ),
    ));
  }
}
