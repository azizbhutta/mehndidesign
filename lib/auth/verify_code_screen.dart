import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mehndidesignapp/auth/login_screen.dart';
import 'package:mehndidesignapp/auth/signup_screen.dart';
import 'package:mehndidesignapp/home_screen.dart';

class VerifyCodeScreen extends StatefulWidget {
  final String verificationId;
   VerifyCodeScreen({Key? key, required this.verificationId}) : super(key: key);

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

bool loading = false;
final verificationController = TextEditingController();
final auth = FirebaseAuth.instance;

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black45,
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // logo here
                  Image.asset(
                    'assets/images/promo.png',
                    height: 80,
                    width: 80,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Log In With Phone',
                    style: GoogleFonts.indieFlower(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Text(
                    'Please enter the phone number',
                    style: GoogleFonts.indieFlower(
                      textStyle: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w300,
                          // height: 1.5,
                          fontSize: 15),
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width / 1.1,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 17),
                              child: TextFormField(
                                controller: verificationController,
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                decoration: const InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                                  prefixIcon: Icon(
                                    Icons.code,
                                    color: Colors.purple,
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Code",
                                  hintText: '541823',
                                  labelStyle: TextStyle(color: Colors.purple),
                                ),
                                validator: (value){
                                  if(value!.isEmpty){
                                    Fluttertoast.showToast(backgroundColor: Colors.purple,msg: "please enter your phone number");
                                  }
                                  return null ;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  // this is button
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          backgroundColor: Colors.purple,
                          padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 3.3,
                              vertical: 20)
                      ),
                      onPressed: () async {
                        setState(() {
                          loading = true;
                        });
                        final credential = PhoneAuthProvider.credential(
                            verificationId: widget.verificationId,
                            smsCode: verificationController.text.toString()
                        );
                        try{
                          await auth.signInWithCredential(credential);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                        }catch(e){
                          setState(() {
                            loading = false;
                          });
                          Fluttertoast.showToast(msg: e.toString());
                        }
                      },
                      child: const Text(
                        'Log in!',
                        style: TextStyle(fontSize: 17),
                      )), //
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
