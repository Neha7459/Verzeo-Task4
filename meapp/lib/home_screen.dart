import 'package:flutter/material.dart';
import 'package:meapp/account_screen.dart';
import 'package:meapp/address_screen.dart';
import 'package:meapp/wrapper.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Razorpay _razorpay;

  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    // _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    // _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    // _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay.clear();
  }

  void openCheckout() async {
    var options = {
      'key': 'rzp_test_qdcNEK6K8YtqpN',
      'amount': 28200,
      'name': 'Shaiq',
      'description': 'Payment',
      'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'},
      'external': {
        'wallets': ['paytm']
      }
    };

    try {
      _razorpay.open(options);
    } catch (e) {
      debugPrint('Error: e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MeApp"),
        backgroundColor: Colors.indigo.shade600,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                child: Column(
                  children: [
                    Material(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        elevation: 10,
                        //child: Padding(padding: EdgeInsets.all(8.0),),
                        child: Image.asset(
                          'assets/backgrounds/person.jpg',
                          width: 80.0,
                          height: 80.0,
                        )),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text(
                        'Neha Bharsat',
                        style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.indigo.shade600,
              ),
            ),
            CustomeListTile(
                Icons.person,
                'MyAccount',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AccountScreen();
                      }))
                    }),
            CustomeListTile(
                Icons.home,
                'Add Address',
                () => {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AddressScreen();
                      }))
                    }),
            CustomeListTile(Icons.info, 'About this app', () => {}),
            CustomeListTile(
                Icons.logout,
                'Sign Out',
                () => {
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Logout'),
                          content:
                              const Text('Are you sure you want to logout?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Wrapper();
                                }))
                              },
                              child: const Text('Yes'),
                            ),
                          ],
                        ),
                      ),
                    }),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 50.0),
        child: Container(
          padding: EdgeInsets.all(20.0),
          height: 500.0,
          color: Colors.blue.shade100,
          child: Center(
            child: Column(
              children: [
                Material(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    elevation: 10,
                    child: Image.asset(
                      'assets/backgrounds/welcome.jpg',
                      // width: 200.0,
                      // height: 200.0,
                    )),
                SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: Text(
                    'Hi Neha! Welcome to MeApp!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Text(
                    'A place where you can save your personal details, important contacts and addresses in the most efficient way. Have you tried it?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () {
                    openCheckout();
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        'GO TO PAYMENT SCREEN',
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
      ),
    );
  }
}

class CustomeListTile extends StatelessWidget {
  IconData icon;
  String text;
  final void Function() onTap;

  CustomeListTile(this.icon, this.text, this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.indigo.shade500,
        child: Container(
          decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey))),
          height: 65.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ]),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
