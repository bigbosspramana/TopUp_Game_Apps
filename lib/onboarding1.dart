import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/gestures.dart';
import 'package:topup_shop/onboarding2.dart';
import 'package:topup_shop/login.dart';

class Onboarding1App extends StatelessWidget {
  const Onboarding1App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Topup Game Shop',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 254, 254, 254)),
      home: const MyHomePage(title: 'Topup Game'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            CrossAxisAlignment.start, // Pastikan semua elemen rata kiri
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Rata kiri untuk teks di dalam Column
              children: [
                Text(
                  'Selamat datang di',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold, // Membuat teks menjadi bold
                  ),
                ),
                Text(
                  'TopUp Game',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Color(0xff2979ff),
                        fontWeight: FontWeight.bold, // Warna biru untuk teks
                      ),
                  textAlign: TextAlign.left,
                ),
                // Menambahkan margin di bagian bawah untuk memberi jarak antara TopUp Game dan teks berikutnya
                Container(
                  margin: EdgeInsets.only(
                      top: 10), // Menambahkan jarak atas di sini
                  child: Text(
                    'Memberikan pengalaman top-up yang mudah, cepat, dan aman bagi pengguna yang ingin mengisi saldo dalam berbagai game favorit mereka.',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 20,
                      bottom: 20), // Menambahkan jarak atas untuk animasi
                  child: Lottie.asset(
                    'assets/asset1.json',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Onboarding2App()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50), // Panjang 400, Tinggi 50
                      backgroundColor:
                          Colors.blue, // Warna latar belakang tombol
                      foregroundColor: Colors.white, // Warna teks tombol
                      padding: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15), // Padding dalam tombol
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Radius sudut tombol
                      ),
                    ),
                    child: Text("Berikutnya"),
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1, // Ketebalan garis
                        color: Colors.grey, // Warna garis
                        endIndent: 10, // Jarak ke teks
                      ),
                    ),
                    Text(
                      "Atau",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey, // Warna teks
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1, // Ketebalan garis
                        color: Colors.grey, // Warna garis
                        indent: 10, // Jarak dari teks
                      ),
                    ),
                  ],
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Warna bayangan
                        offset: Offset(
                            0, 0), // Posisi bayangan (horizontal, vertical)
                        blurRadius: 7, // Tingkat blur bayangan
                        spreadRadius: 1, // Sebaran bayangan
                      ),
                    ],
                    borderRadius:
                        BorderRadius.circular(10), // Sesuaikan dengan tombol
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(400, 50), // Panjang 400, Tinggi 50
                      backgroundColor:
                          Colors.white, // Warna latar belakang tombol
                      foregroundColor: Colors.blue, // Warna teks tombol
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginApp()),
                      );
                    },
                    child: Text("Login"),
                  ),
                ),

                Center(
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Pusatkan secara vertikal
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Pusatkan secara horizontal
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: RichText(
                          textAlign: TextAlign
                              .center, // Pastikan teks dalam RichText diratakan ke tengah
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Belum punya akun? ", // Teks biasa dengan warna 1
                                style: TextStyle(
                                  color: Colors.black, // Warna 1
                                  fontSize: 16,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "Daftar", // Teks dengan warna 2 yang dapat diklik
                                style: TextStyle(
                                  color: Colors.blue, // Warna 2
                                  fontSize: 16,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // Aksi navigasi
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
