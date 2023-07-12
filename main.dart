import 'package:flutter/material.dart';
import 'package:tugas_satu/komponen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //Local variable state
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //username and password
  bool? isUsernameEmpty;
  bool? isPasswordEmpty;

  @override
  void initState() {
    usernameController.text = 'Mikroskil';
    passwordController.text = 'admin';
    isUsernameEmpty = false;
    isPasswordEmpty = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, 39),
                width: 457.81,
                height: 283.56,
                child: Image.asset(
                  'assets/top_signin.jpg',
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(28, 109, 43, 31.48),
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/bottom_signin.jpg'),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 35),
                        child: Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            height: -1.3265,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(3, 0, 0, 18),
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.66,
                            height: 30,
                            child: TextField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Username/Email',
                                  errorText: isUsernameEmpty == true
                                      ? 'Username Harus diisi terlebih dahulu'
                                      : null),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(3, 0, 0, 18),
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.66,
                            height: 30,
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Password',
                                  errorText: isPasswordEmpty == true
                                      ? 'kata sandi harus di isi'
                                      : null),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(9, 0, 0, 0),
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: 30,
                      child: ElevatedButton(
                        onPressed: () {
                          //validaion empty login
                          if (usernameController.text.isEmpty) {
                            setState(() {
                              isUsernameEmpty = true;
                            });
                          }
                          if (passwordController.text.isEmpty) {
                            setState(() {
                              isPasswordEmpty = true;
                            });
                          } else {
                            setState(() {
                              isUsernameEmpty = false;
                              isPasswordEmpty = false;
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyHomeWidget(
                                      username: usernameController.text);
                                },
                              ),
                            );
                          }
                          ;
                        },
                        child: Text('Log In'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
