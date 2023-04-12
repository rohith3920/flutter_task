import 'package:flutter/material.dart';
import './forgot.dart';
import 'package:google_fonts/google_fonts.dart';

class loginform1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginform1(),
    );
  }
}

class Loginform1 extends StatefulWidget {
  @override
  State<Loginform1> createState() => _Loginform1State();
}

class _Loginform1State extends State<Loginform1> {
  final EmailController = TextEditingController();
  final PassController = TextEditingController();
  bool isPasswordVisible = false;
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
                      image: AssetImage('assets/Group 21 (1).png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white70,
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
                            'Sign in to your account',
                            // style: TextStyle(
                            //   fontSize: 25,
                            //   color: Colors.black87,
                            //   GoogleFonts.roboto(),
                            // ),
                            style: GoogleFonts.poppins(
                              color: Colors.black87,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(60, 10, 60, 20),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam.',
                            // style: TextStyle(fontSize: 13),
                            // textAlign: TextAlign.center,
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
                          child: TextFormField(
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
                            controller: EmailController,
                            // validator: (value) {
                            //   bool emailValid = RegExp(
                            //           r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                            //       .hasMatch(value);
                            //   if (value!.isEmpty) {
                            //     return "Enter email";
                            //   } else if (!emailValid) {
                            //     return "Enter valid Email";
                            //   }
                            // },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: SizedBox(
                          width: 350,
                          child: TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: 'Password',
                              labelStyle: TextStyle(color: Colors.black),
                              suffixIcon: IconButton(
                                icon: isPasswordVisible
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    isPasswordVisible = !isPasswordVisible;
                                  });
                                },
                              ),
                              hintText: 'your password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                            ),
                            obscureText: isPasswordVisible,
                            controller: PassController,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              value: false,
                              onChanged: (bool? value) {},
                            ),
                            Text("Remember Me"),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                      color: Colors.blue.shade500,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: SizedBox(
                          width: 330,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => forgotform1()));
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange.shade900),
                            ),
                          ),
                        ),
                      ),
                    ],
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
