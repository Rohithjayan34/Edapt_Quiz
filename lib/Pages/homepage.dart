import 'package:firebase_auth/firebase_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Quizzup/Pages/enterPage.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:google_sign_in/google_sign_in.dart';

ProgressDialog pr;

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _otpController = TextEditingController();

  FirebaseUser _firebaseUser;
  String _status;

  AuthCredential _phoneAuthCredential;
  String _verificationId;
  int _code;

  @override
  void initState() {
    super.initState();
    _getFirebaseUser();
  }


  Future<void> _getFirebaseUser() async {
    this._firebaseUser = await FirebaseAuth.instance.currentUser();

    setState(() {
      _status =
      (_firebaseUser == null) ? 'Not Logged In\n' : 'Already LoggedIn\n';
    });
  }



  Future<void> _login() async {
    String phoneNumber = "+91 " + _phoneNumberController.text.toString().trim();
    print(phoneNumber);


    /// The below functions are the callbacks, separated so as to make code more redable
    Future<void> verificationCompleted(
        AuthCredential phoneAuthCredential) async {
      print('verificationCompleted');
      setState(() {
        _status += 'verificationCompleted\n';
      });
      this._phoneAuthCredential = phoneAuthCredential;
      print(phoneAuthCredential);

      /// This method is used to login the user
      /// `AuthCredential`(`_phoneAuthCredential`) is needed for the signIn method
      /// After the signIn method from `AuthResult` we can get `FirebaserUser`(`_firebaseUser`)
      try {
        await FirebaseAuth.instance
            .signInWithCredential(this._phoneAuthCredential)
            .then((AuthResult authRes) {
          _firebaseUser = authRes.user;
          print(_firebaseUser.toString());
        });
        setState(() {
          _status += ' You Signed In\n';
        });
      } catch (e) {
        setState(() {
          _status += e.toString() + '\n';
        });
        print(e.toString());
      }
    }

    Future<void> _logout() async {
      /// Method to Logout the `FirebaseUser` (`_firebaseUser`)
      try {
        // signout code
        await FirebaseAuth.instance.signOut();
        _firebaseUser = null;
        setState(() {
          _status += 'Signed out\n';
        });
      } catch (e) {
        setState(() {
          _status += e.toString() + '\n';
        });
        print(e.toString());
      }
    }


    void verificationFailed(AuthException error) {
      print('verificationFailed');
      setState(() {
        _status += '\n';
      });
      print(error);
    }

    void codeSent(String verificationId, [int code]) {
      print('codeSent');
      this._verificationId = verificationId;
      print(verificationId);
      this._code = code;
      print(code.toString());
      setState(() {
        _status += 'Code Sent\n';
      });
    }

    void codeAutoRetrievalTimeout(String verificationId) {
      print('codeAutoRetrievalTimeout');
      setState(() {
        _status += 'codeAutoRetrievalTimeout\n';
      });
      print(verificationId);
    }

    await FirebaseAuth.instance.verifyPhoneNumber(

      /// Make sure to prefix with your country code
      phoneNumber: phoneNumber,

      /// `seconds` didn't work. The underlying implementation code only reads in `millisenconds`
      timeout: Duration(milliseconds: 10000),

      /// If the SIM (with phoneNumber) is in the current device this function is called.
      /// This function gives `AuthCredential`. Moreover `login` function can be called from this callback
      verificationCompleted: verificationCompleted,

      /// Called when the verification is failed
      verificationFailed: verificationFailed,

      /// This is called after the OTP is sent. Gives a `verificationId` and `code`
      codeSent: codeSent,

      /// After automatic code retrival `tmeout` this function is called
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    ); // All the callbacks are above
  }

  void _submitOTP() {
    /// get the `smsCode` from the user
    String smsCode = _otpController.text.toString().trim();

    /// when used different phoneNumber other than the current (running) device
    /// we need to use OTP to get `phoneAuthCredential` which is inturn used to signIn/login
    this._phoneAuthCredential = PhoneAuthProvider.getCredential(
        verificationId: this._verificationId, smsCode: smsCode);

    _login();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    pr = new ProgressDialog(context);
    pr.style(
        message: 'Verifying...',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 8.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 15.0, fontWeight: FontWeight.w600)
    );


    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: isSignIn
              ? Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 115.0),
                  child: SvgPicture.asset(
                    "images/edapt_newlogo.svg",
                    color: Colors.black,
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "edapt",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontFamily: 'Raleway',
                      fontSize: 33),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: CircleAvatar(
                    // backgroundImage: NetworkImage(_user.photoUrl),
                    radius: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  // child: Text('Welcome  ' + _user.displayName.toUpperCase()),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    height: 50,
                    width: 120,
                    color: Colors.blue,
                    child: OutlineButton(

//                      onPressed: () {
//                        Navigator.push(context,
//                          new MaterialPageRoute(
//                              builder: (context) => new FirstScreen()),
//                        );
//                      },
                      child: Text("START"),
                      textColor: Colors.white,
                    ),
                  ),
                ),


              ],
            ),
          )
              : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 120,
                  ),
                  Column(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SvgPicture.asset(
                            "images/edapt_newlogo.svg",
                            color: Colors.black,
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "edapt",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontFamily: 'Raleway',
                                fontSize: 33),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Future-Proofing the next generation",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff707070)),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
//                      if (DateTime.now().timeZoneName == 'IST')
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 120),
                        child: Container(
                          width: 320,
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[300]),

                              borderRadius: BorderRadius.circular(10)),
                          child: SizedBox(
                            height: 52,
                            child: Container(
                              height: 54.0, // 40dp - 2*1dp border
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    color: Colors.white,
                                    width:
                                    150,
                                    child: Form(
                                      key: _formKey,
                                      child: TextFormField(
                                        style:
                                        new TextStyle(color: Colors.black),
                                        textAlign: TextAlign.center,

                                        controller: _phoneNumberController,
                                        decoration: InputDecoration(


                                            border: UnderlineInputBorder(),
                                            enabledBorder: InputBorder.none,
                                            icon: Icon(Icons.phone_android),
                                            fillColor: Colors.white,
                                            hintText: 'Phone Number',
                                            hintStyle: TextStyle(fontSize: 15)),
                                        keyboardType: TextInputType.phone,
                                        // maxLength: 10,
                                        // validator: validateMobile,
                                        // onChanged:
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          width: 320,

                          decoration: new BoxDecoration(

                              borderRadius: BorderRadius.circular(10)),
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              color: Colors.blue,
                              child: SizedBox(
                                height: 54,
                                child: Center(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    )),
                              ), onPressed: () {
                            _login();
                            pr.show();
                            Future.delayed(Duration(seconds: 4)).then((value) {
                              pr.hide().whenComplete(() {

                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        EnterScreen()));
                              });
                            });
                          }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Container(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 150,
                      child: OutlineButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.black,
                        child: SizedBox(
                          height: 52,
                          child: Container(
                            height: 54.0, // 40dp - 2*1dp border
                            // width: 38.0, // matches above
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: Ink(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  IconButton(
                                    icon: FaIcon(FontAwesomeIcons.google),
                                    onPressed: () {
                                      //  handleSignIn();
                                    },),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'GOOGLE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ), onPressed: () {

                          _googleSignUp();
                            pr.show();
                            Future.delayed(Duration(seconds: 3)).then((value) {
                            pr.hide().whenComplete(() {

                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    EnterScreen()));



    });
    });


                      },

                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 170,
                      child: OutlineButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.blue,
                        child: SizedBox(
                          height: 52,
                          child: Container(
                            height: 54.0,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: Ink(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  IconButton(icon: FaIcon(
                                      FontAwesomeIcons.facebook)),
                                  SizedBox(
                                    width: 7,
                                  ),
                                  Text(
                                    'FACEBOOK',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
//    setState(() {
//    bodyWidget = loadingScreen();
//    });
//    _signInWithFacebook();
//    },
                        },
                      ),


                    ),
                  ],
                ),
              ),

              MaterialButton(
                height: 20,
                onPressed: _logout,
                child: Text('Logout'),
                color: Theme
                    .of(context)
                    .accentColor,
              ),

              Text('$_status',
                style: TextStyle(
                  fontSize: 10,
                ),
              ),

            ],
          ),

        ),
      ),

    );
  }

  bool isSignIn = false;


  Future<void> _logout() async {
    /// Method to Logout the `FirebaseUser` (`_firebaseUser`)
    try {
      // signout code
      await FirebaseAuth.instance.signOut();
      _firebaseUser = null;
      setState(() {
        _status += 'Signed out\n';
      });
    } catch (e) {
      setState(() {
        _status += e.toString() + '\n';
      });
      print(e.toString());
    }
  }
}

bool isSignin=false;

Future<void> _googleSignUp() async {
  try {
    final GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email'
      ],
    );
    final FirebaseAuth _auth = FirebaseAuth.instance;

    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );


    final FirebaseUser user = (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);
    return user;



  }catch (e) {
    print(e.message);
  }
}
