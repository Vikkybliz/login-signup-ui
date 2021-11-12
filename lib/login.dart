import 'package:flutter/material.dart';
import 'package:login_ui/signup.dart';
import 'package:get/get.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/login.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  )
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User name'
                ),
                keyboardType: TextInputType.text,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password'
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login Up'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(() => SignUp());},
                    child: Text('Sign up',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  )
                ],
              )
            ],
          )
      ),
    );
  }
}
