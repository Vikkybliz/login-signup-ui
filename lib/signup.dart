import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
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
                      image: AssetImage('assets/signup.png'),
                      fit: BoxFit.fill
                    )
                  ),
                )
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'First name',
                ),
                keyboardType: TextInputType.text,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last name'
                ),
                keyboardType: TextInputType.text,
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
                    labelText: 'Email address'
                ),
                keyboardType: TextInputType.emailAddress,
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
                  child: Text('Sign Up'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Have an account?',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white
                    ),
                  ),
                  InkWell(
                    onTap: () {Get.to(() => LogIn());},
                    child: Text('Log in',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.lightBlueAccent,
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
