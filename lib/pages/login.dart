import 'package:flutter/material.dart';
import 'package:login/pages/register.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
              child: Column(
                children: [
                  SizedBox(
                    width: 200,
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset('assets/images/user.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 30),
                    
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintStyle: const TextStyle(color: Colors.white),
                        suffixIcon: const Icon(Icons.verified_user),
                        
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(70.0),
                            borderSide:const BorderSide(
                              color:Colors.white,
                              width: 0.0,
                              style:BorderStyle.solid
                            )
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.white),
                        hintStyle: const TextStyle(color: Colors.white),
                        suffixIcon: const Icon(Icons.lock_clock_outlined),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(70.0),
                            borderSide:const BorderSide(
                              color:Colors.white,
                              width: 0.0,
                              style:BorderStyle.solid
                            )
                            ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text('You do not have an account?',
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                    
                    
                    
                  ),
                  InkWell(
                    child: const Text(
                      'sign up here',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 190, 60)),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
