import 'package:flutter/material.dart';
import 'package:todoapp/pages/homescreen_page.dart';
import 'package:todoapp/pages/signup_page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // Kembalikan ke false
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 90),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min, // Batasi ukuran kolom
              children: [
                // LOGO
                Image.asset(
                  'assets/images/logoapp.png',
                  width: 150,
                  height: 150,
                ),
                const SizedBox(height: 160),

                // EMAIL FIELD
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 12.0,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFFFF8C94),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // PASSWORD FIELD
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                      horizontal: 12.0,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.visibility_off, color: Colors.grey),
                      onPressed: () {
                        // Aksi untuk toggle visibility password
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Color(0xFFFF8C94),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // FORGOT PASSWORD BUTTON
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                    },
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                      minimumSize: MaterialStateProperty.all(Size.zero),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Color(0xFFFF8C94),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 5),

                // SIGN IN BUTTON
                ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreenPage())); },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFF8C94),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 105.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Colors.white,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // SIGNUP TEXT
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpPage()));
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                    minimumSize: MaterialStateProperty.all(Size.zero),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  child: const Text(
                    'Belum punya akun? Buat disini',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Color.fromARGB(255, 80, 74, 74),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}