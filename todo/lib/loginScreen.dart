import 'package:flutter/material.dart';
import 'package:todo/toDoScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFFF0F4F3)),
      backgroundColor: const Color(0xFFF0F4F3),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome back",
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              'assets/images/img2.png',
            ),
            const SizedBox(
              height: 80,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true, // Enables background color
                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                ),
                label: const Text(
                  "Enter your Email",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                filled: true, // Enables background color
                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsets.only(left: 20, top: 10, bottom: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                ),
                label: const Text(
                  "Enter Password",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Forgot password ?",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xFF50C2C9),
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ToDoScreen();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF50C2C9),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Removes circular border
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                )),
            const SizedBox(
              height: 18,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Color(0xFF50C2C9),
                    fontFamily: 'Poppins',
                    fontSize: 15,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
