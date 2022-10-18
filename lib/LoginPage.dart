import 'package:flutter/material.dart';
import 'package:login_page1/screenMain.dart';
import 'package:login_page1/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/1039189.png",
                  height: 85,
                ),
                const Text(
                  "Chinchagram",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 50,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " This field is required.";
                    } else if (value != "Sinan") {
                      return "Invalid Username";
                    } else {
                      return null;
                    }
                  },
                  controller: _usernameController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return " This field is required.";
                    } else if (value != "702545") {
                      return "Invalid Password.";
                    }
                    {
                      return null;
                    }
                  },
                  controller: _passwordController,
                  style: const TextStyle(color: Colors.white),
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: const Color.fromARGB(255, 153, 153, 153),
                    ),
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        checkLogin(context);
                      } else {}
                    },
                    child: const Text("Login"))
              ],
            ),
          ),
        ),
      )),
    );
  }

  void checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == "Sinan" && _password == "702545") {
      final sharedpref = await SharedPreferences.getInstance();
      await sharedpref.setBool(SaveKeyName, true);

      Navigator.of(ctx)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenHome()));
    }
    //go to home
    else {
      // final _errorMessage = 'Username and password are not the same';
      // //snackbar

      // ScaffoldMessenger.of(ctx).showSnackBar(SnackBar(
      //     behavior: SnackBarBehavior.floating,
      //     duration: Duration(seconds: 2),
      //     margin: EdgeInsets.all(10),
      //     content: Text(_errorMessage),
      //     backgroundColor: Colors.red));

      // //Alert dialog

      // showDialog(
      //     context: ctx,
      //     builder: (ctx1) {
      //       return AlertDialog(
      //         title: Text("error"),
      //         content: Text(_errorMessage),
      //         actions: [
      //           TextButton(
      //               onPressed: () {
      //                 Navigator.of(ctx1).pop();
      //               },
      //               child: Text("Close"))
      //         ],
      //       );
      //     });

      // //show text

      // setState(() {
      //   ismatched = true;
      // });

    }
  }
}
