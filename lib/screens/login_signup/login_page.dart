import 'package:flutter/material.dart';
import 'package:seller_panel/API/api.dart';
import 'package:seller_panel/widgets/constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var visibility = true;
  bool isHidden = true;
  bool iconVisible = false;
  String message = '';
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleVisibility() {
    setState(() {
      isHidden = !isHidden;
      iconVisible == true ? iconVisible = false : iconVisible = true;
      print(iconVisible);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size maxSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.only(
              left: maxSize.width * 0.07,
              top: maxSize.height * 0.03,
              right: maxSize.width * 0.09,
              bottom: maxSize.height * 0.03,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Icon(
                          Icons.keyboard_backspace,
                          color: Color(0xFFC5CCD6),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/homepage');
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            'Skip',
                            style: TextStyle(color: Color(0xFF9396EA)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: maxSize.height * 0.08),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: maxSize.height * 0.09,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User Name',
                          style: kCommonTextStyle.copyWith(
                              color: Color(0xFFA6A6A6)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFeild("User Name"),
                        SizedBox(
                          height: maxSize.height * 0.035,
                        ),
                        Text(
                          'Password',
                          style: kCommonTextStyle.copyWith(
                              color: Color(0xFFA6A6A6)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        buildTextFeild("Password"),
                        SizedBox(
                          height: maxSize.height * 0.1,
                        ),
                        Text(message),
                        SizedBox(
                          height: maxSize.height * 0.1,
                        ),
                        GestureDetector(
                          onTap: () async {
                            if (_formKey.currentState.validate()) {
                              var email = emailController.text;
                              var password = passwordController.text;
                              setState(() {
                                message = "Please wait...";
                              });
                              var rsp = await loginUser(email, password);
                              print(rsp);
                              if (rsp.containsKey('status')) {
                                if (rsp['status'] == 1) {
                                  message = "Login Sucess";
                                }
                              } else {
                                setState(() {
                                  message = "Login failed...";
                                });
                              }
                            }
                          },
                          child: Center(
                            child: Container(
                              width: maxSize.width * 0.6,
                              height: maxSize.height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color(0xFF022542),
                                  Color(0xFF727C8E),
                                ]),
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextFeild(String hintText) {
    return TextField(
      controller:
          hintText == "User Name" ? emailController : passwordController,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14),
        prefixIcon:
            hintText == "User Name" ? Icon(Icons.email) : Icon(Icons.lock),
        suffixIcon: hintText == "Password"
            ? IconButton(
                icon: iconVisible == false
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: toggleVisibility,
              )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD3D3D3),
            width: 1.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.0),
          borderSide: BorderSide(
            width: 1.0,
          ),
        ),
      ),
      obscureText: hintText == "Password" ? isHidden : false,
      keyboardType: TextInputType.text,
    );
  }
}
