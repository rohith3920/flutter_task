import 'package:flutter/material.dart';
import './verficarion.dart';
import 'package:google_fonts/google_fonts.dart';

class forgotform1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Forgotform1(),
    );
  }
}

class Forgotform1 extends StatefulWidget {
  @override
  State<Forgotform1> createState() => _Forgotform1State();
}

class _Forgotform1State extends State<Forgotform1> {
  final EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Group 20 (2).png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                          child: Text(
                            'Forgot your password?',
                            // style:
                            //     TextStyle(fontSize: 25, color: Colors.black87),
                            style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(80, 10, 80, 20),
                          child: Text(
                            'No Problem, Please enter your email address to send verification code.',
                            // style: TextStyle(fontSize: 13, color: Colors.black),
                            style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        child: SizedBox(
                          width: 350,
                          child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.mail),
                                // hintText: 'rohithreddy2427@gmail.com',
                                // hintStyle: TextStyle(color: Colors.black),
                                labelText: 'Email Address',
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.greenAccent),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              controller: EmailController),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: SizedBox(
                    width: 330,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => verficationform1()));
                      },
                      child: Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange.shade900),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
