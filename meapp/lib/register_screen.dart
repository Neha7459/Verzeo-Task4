import 'package:flutter/material.dart';
import 'package:meapp/home_screen.dart';
import 'package:meapp/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(25.0, 70.0, 25.0, 50.0),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/backgrounds/bg1.jpg"),
            fit: BoxFit.fill,
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(top: 70.0),
                height: 130.0,
                child: Text(
                  "Register",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45.0),
                ),
                //color: Colors.grey,
              ),
              Text(
                "Let's get started!",
                style: TextStyle(
                    color: Colors.white, fontSize: 20.0, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 20.0,
              ),

              Container(
                margin: EdgeInsets.only(top: 170.0),
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.indigo.shade600,
                        blurRadius: (10.0),
                        offset: Offset(0, 10))
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.shade300))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.email),
                            border: InputBorder.none,
                            hintText: "Email Id",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      child: TextFormField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.lock),
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }))
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: screenHeight / 17),
                    child: Center(
                      child: Text(
                        'CREATE ACCOUNT',
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
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginScreen();
                    }))
                  },
                  child: Text(
                    'Already a User? Login here',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
              //Padding(padding: EdgeInsets.only(top: 30.0)),
            ],
          ),
        ),
      ),
    );
  }
}
