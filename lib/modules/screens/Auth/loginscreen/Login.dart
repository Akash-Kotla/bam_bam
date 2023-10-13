import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  static String loginRoute = "/login";

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final _formkey = GlobalKey<FormState>();
  bool _ishidden = true;
  bool _isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void passwordState() {
    setState(() {
      _ishidden = !_ishidden;
    });
  }

  String? validateEmail(String? email) {
    final RegExp emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    final isEmailValid = emailRegExp.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Enter valid email';
    } else if (email == '') {
      return null;
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Container(
        padding: const EdgeInsets.fromLTRB(34.0, 82.0, 34.0, 60.4),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Login',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 84, 0, 0),
            child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: true,
                      enableSuggestions: true,
                      obscureText: false,
                      decoration: const InputDecoration(
                          labelText: 'Email',
                          labelStyle:
                              TextStyle(fontSize: 14, color: Colors.white),
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                      controller: emailController,
                      validator: validateEmail,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      autocorrect: true,
                      enableSuggestions: true,
                      obscureText: _ishidden,
                      cursorHeight: null,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                              fontSize: 14, color: Colors.white),
                          suffix: IconButton(
                            onPressed: () {
                              passwordState();
                            },
                            icon: Icon(_ishidden
                                ? CupertinoIcons.eye_slash
                                : CupertinoIcons.eye),
                          ),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                      controller: passwordController,
                      validator: (value) {
                        value!.length < 8 ? 'please enter your password' : null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: _isChecked,
                                side: const BorderSide(
                                    color: Color.fromARGB(255, 245, 241, 241),
                                    style: BorderStyle.solid),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2)),
                                activeColor: Color.fromARGB(255, 6, 6, 6),
                                onChanged: (value) {
                                  if (value != null) {
                                    setState(() {
                                      _isChecked = value;
                                    });
                                  }
                                },
                              ),
                              const Text(
                                'Stay signed in',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: TextButton(
                              child: const Text(
                                'Forget Password?',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        MaterialButton(
                            onPressed: () {
                              _formkey.currentState!.validate();
                            },
                            color: const Color(0xFFBD0308),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(22)),
                            height: 45,
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Color(0xfff2f2f2),
                              thickness: 1,
                              indent: 10,
                              endIndent: 20,
                            ),
                          ),
                          Text(
                            'or',
                            style: TextStyle(
                                fontSize: 16, color: Color(0xfff2f2f2)),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xfff2f2f2),
                              thickness: 1,
                              indent: 20,
                              endIndent: 10,
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 40,
                    ),

                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 70, 69, 69),
                            height: 50,
                            minWidth: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: const FaIcon(
                              size: 20,
                              FontAwesomeIcons.google,
                            ),
                          ),
                          const SizedBox(width: 10),
                          MaterialButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 70, 69, 69),
                            height: 50,
                            minWidth: 50,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: const FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 27,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      const Text(
                        'Don\'t Have a Account',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/Register');
                        },
                        color: Colors.transparent,
                        child: const Text(
                          'Register Now',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                        ),
                      )
                    ])
                  ],
                )),
          )
        ]),
      ),
    ));
  }
}
