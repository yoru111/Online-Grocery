import 'package:aplikasi_grocery/component/login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sign Up',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegistrasiPage(),
    );
  }
}

class RegistrasiPage extends StatefulWidget {
  const RegistrasiPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<RegistrasiPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void register() {
    final String email = emailController.text;
    final String password = passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Implementasikan logika login di sini
      print("Email: $email");
      print("Password: $password");
    } else {
      // Menampilkan pesan jika ada field yang kosong
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Silakan masukkan email dan kata sandi!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Menempatkan semua ke kiri
          children: [
            // Bagian Gambar
            Stack(
              children: [
                Image.asset(
                  'build/assets/buah.png', 
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage() 
                      ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ],
            ),

            // Bagian Form
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.lightGreen[50], // Warna background hijau muda
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Teks ke kiri
                children: [
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Hi! Ayo buat akun anda",
                    style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 24),

                  // Form Email
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "Masukkan Email Anda",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Form Password
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Masukkan password Anda",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Tombol register
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(), ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green, // Warna hijau tombol
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text("Sign Up"),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Teks Daftar
                  Center(
  child: Text.rich(
    TextSpan(
      text: "Already have account? ",
      children: [
        TextSpan(
          text: "Login",
          style: const TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
          // Tambahkan navigasi untuk teks "login"
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(), // Halaman Lgin
                ),
              );
            },
          ),
        ],
      ),
    ),
  ),
                  const SizedBox(height: 24),

                  // Garis Pembatas
                  const Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("Atau"),
                      ),
                      Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Icon Sosial Media
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.favorite,
                        color: Colors.pink,
                        ),
                        onPressed: () {
                          
                        },
                        ),
                      IconButton(
                        icon: const Icon(Icons.phone, color: Colors.green),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Image.asset('assets/facebook.png'), // Ikon Facebook
                        onPressed: () {},
                      ),
                    ],
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