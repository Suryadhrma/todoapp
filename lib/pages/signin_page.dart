import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO
            Image.asset(
              'assets/images/logoapp.png', // Path gambar logo
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 40),

            // EMAIL FIELD
            TextField(
              decoration: InputDecoration(
                hintText: 'Email', // Placeholder text
                hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                filled: true, // Tambahkan warna background
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 12.0,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.grey, // Warna border saat tidak fokus
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Color(0xFFFF8C94), // Warna border saat fokus
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // PASSWORD FIELD
            TextField(
              obscureText: true, // Untuk menyembunyikan password
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: const TextStyle(fontFamily: 'Montserrat'),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 16.0,
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
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
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

            const SizedBox(height: 30),

            // SIGN IN BUTTON
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF8C94),
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 200.0),
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
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
