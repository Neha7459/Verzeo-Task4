import 'package:flutter/material.dart';
import './second_screen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: '/first',
      // routes: {
      //   '/first': (context) => MyHomePage(),
      //   '/second': (context) => SecondScreen()
      // },
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controllerUserName = TextEditingController();
  final _controllerUserChoice = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        title: Text('My First App'),
        backgroundColor: Colors.purple[600],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              color: Colors.purple[600],
              child: Text(
                'Welcome to my App!',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About this app'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      color: Colors.green[200],
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image(
                            image: NetworkImage(
                                'https://m.economictimes.com/thumb/msid-68721417,width-1200,height-900,resizemode-4,imgsize-1016106/nature1_gettyimages.jpg'),
                            width: 150.0,
                            height: 150.0,
                            fit: BoxFit.contain,
                          ),
                          Row(
                            children: [
                              Icon(Icons.travel_explore),
                              Icon(Icons.wb_sunny),
                              Icon(Icons.fmd_good),
                              Icon(Icons.local_florist_outlined),
                              Icon(Icons.nature_people),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                top: 20.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.green[500],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              padding: EdgeInsets.all(10.0),
                              child: Text('Spend time in Nature'))
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue[200],
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage('assets/socialmedia.jpg'),
                            width: 150.0,
                            height: 150.0,
                            fit: BoxFit.contain,
                          ),
                          Row(
                            children: [
                              Icon(Icons.facebook),
                              Icon(Icons.mobile_friendly_outlined),
                              Icon(Icons.rss_feed),
                              Icon(Icons.photo_camera_front_rounded),
                              Icon(Icons.shopping_cart_rounded)
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                top: 20.0,
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.blue[500],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              padding: EdgeInsets.all(10.0),
                              child: Text('Surfing Internet'))
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 40.0),
                  //color: Colors.amber,
                  child: Text(
                    'What is your name ?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: 'IndieFlower'
                    ),
                  ),
                ),
                TextField(
                  controller: _controllerUserName,
                  autofocus: false,
                  keyboardType: TextInputType.name,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'What do you do in your free time ?',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      //fontFamily: 'IndieFlower'
                    ),
                  ),
                ),
                TextField(
                  controller: _controllerUserChoice,
                  autofocus: false,
                  keyboardType: TextInputType.text,
                ),
                ElevatedButton(
                    onPressed: () {
                      passToSecondScreen(context);

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return SecondScreen();
                      //   //pushes a new screen on the top of the stack
                      // }));
                    },
                    child: Text("Submit"))
              ],
            )),
      ),
    );
  }

  void passToSecondScreen(BuildContext context) {
    String sendText =
        _controllerUserName.text + " likes to " + _controllerUserChoice.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondScreen(
                  name: sendText,
                )));
  }
}
