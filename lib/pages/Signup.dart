import 'package:flutter/material.dart';
import 'package:super_todo/pages/Login.dart';
import 'package:super_todo/styles/colors.dart';

class Signup extends StatelessWidget {
  static final String route = 'signup';

  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: cPrimary,
                      size: 50,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Tungar Messenger",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: cPrimary),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Please Sign Up', style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black54),),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "First Name",
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Last Name",
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()),
                    );
                  },
                  child: Text('Sign Up'),
                ),
                SizedBox(height: 15,),
                GestureDetector(onTap: () {
                  Navigator.pop(context);
                }, child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Already have an account with us?', style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black54),),
                    SizedBox(width: 5,),
                    Text('Login', style: Theme.of(context).textTheme.headline6?.copyWith(color: cPrimary),),
                    SizedBox(width: 20,),
                  ],
                ),)
              ],
            )),
      ),
    );
  }
}