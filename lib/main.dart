import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Widget utama
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

// Halaman Login
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B78B5),

      body: Center(
        child: Container(
          width: 230,
          height: 420,

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // TEXT
              Text(
                "GDSC POLSRI",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 40),

              // GAMBAR LOGO
              Image.asset(
                'assets/images/logo.png',
                width: 120,
                height: 120,
              ),

              SizedBox(height: 40),

              // BUTTON LOGIN
              SizedBox(
                width: 130,
                height: 45,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),

                  onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Login berhasil ditekan"),
                      ),
                    );

                  },

                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40),

              // ICON LOGIN BAWAH
              Icon(
                Icons.login,
                size: 35,
                color: Colors.black,
              ),

            ],
          ),
        ),
      ),
    );
  }
}