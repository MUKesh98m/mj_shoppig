import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mj_shopping/pages/home.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String username = "";
  var onchanged = false;

  final _formkey = GlobalKey<FormState>();

  moveTohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        onchanged = true;
      });

      await Future.delayed(const Duration(seconds: 2));
      await Navigator.push(
          context, MaterialPageRoute(builder: (context) => home()));
      setState(() {
        onchanged = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(

        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Image.asset("assets/images/login.png"),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Welcome $username",
                  style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Enter Username",
                    labelText: " Email Id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    prefixText: '   ',
                    prefixIcon: Icon(Icons.login_rounded),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username Cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    username = value;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password Cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "password",
                      prefixIcon: Icon(Icons.password_outlined),
                      hintStyle: TextStyle(
                          // fontFamily: GoogleFonts.fascinate().fontFamily,
                          ),
                      border: OutlineInputBorder(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)))),
                ),
                SizedBox(
                  height: 35,
                ),
                InkWell(
                  onTap: () => moveTohome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 2),
                    height: 50,
                    width: onchanged ? 50 : 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(onchanged ? 50 : 8),
                      color: Colors.blue,
                    ),
                    child: onchanged
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text("Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: onchanged ? 15 : 25,
                            )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text(
                      "Don't have any account ? ",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Or",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    children: [
                      // Padding(padding: EdgeInsets.only(left: 62)),
                      Image.asset('assets/images/google.png',
                          height: 40, width: 40),
                      // Padding(padding: EdgeInsets.only(left: 40)),
                      Image.asset('assets/images/facebook.png',
                          height: 40, width: 40),
                      // Padding(padding: EdgeInsets.only(left: 40)),
                      Image.asset('assets/images/twitter.png',
                          height: 40, width: 40),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
