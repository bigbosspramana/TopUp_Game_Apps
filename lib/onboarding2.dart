import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/gestures.dart';
import 'package:topup_shop/onboarding1.dart';
import 'package:topup_shop/onboarding3.dart';

class Onboarding2App extends StatelessWidget {
  const Onboarding2App({super.key});

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
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Top-Up Game ',
                        style: TextStyle(
                          color: Colors.black, // Warna untuk "Top-Up Game"
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Mudah',
                        style: TextStyle(
                          color: Colors.blue, // Warna untuk "Mudah"
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' dan ',
                        style: TextStyle(
                          color: Colors.black, // Warna untuk "dan"
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: 'Cepat, ',
                        style: TextStyle(
                          color: Colors.blue, // Warna untuk "Cepat"
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' nikmati pengalaman bermain tanpa hambatan',
                        style: TextStyle(
                          color: Colors.black, // Warna untuk "Cepat"
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                // Menambahkan margin di bagian bawah untuk memberi jarak antara TopUp Game dan teks berikutnya
                Container(
                  margin: EdgeInsets.only(
                      top: 10,
                      bottom: 10), // Menambahkan jarak atas untuk animasi
                  child: Lottie.asset(
                    'assets/asset2.json',
                    fit: BoxFit.contain,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: 10), // Menambahkan jarak atas di sini
                  child: Text(
                    'Isi ulang saldo game favoritmu dengan cepat dan aman melalui aplikasi kami. Nikmati kemudahan top-up berbagai game dengan harga terbaik dan proses yang efisien, hanya dalam beberapa langkah.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(
                      top: 40), // Margin top untuk seluruh group tombol
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Menyusun tombol ke ujung kiri dan kanan
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black
                                  .withOpacity(0.1), // Warna bayangan
                              offset: Offset(0,
                                  0), // Posisi bayangan (horizontal, vertical)
                              blurRadius: 7, // Tingkat blur bayangan
                              spreadRadius: 1, // Sebaran bayangan
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                              10), // Sesuaikan dengan tombol
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Onboarding1App()),
                            );
                          },
                          child: Text('Kembali'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            textStyle: TextStyle(fontSize: 16),
                            backgroundColor:
                                Colors.white, // Warna latar belakang tombol
                            foregroundColor: Colors.blue, // Warna teks tombol
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Onboarding3App()),
                            );
                          },
                          child: Text('Lanjut'),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 12),
                            textStyle: TextStyle(fontSize: 16),
                            backgroundColor:
                                Colors.blue, // Warna latar belakang tombol
                            foregroundColor: Colors.white, // Warna teks tombol
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
