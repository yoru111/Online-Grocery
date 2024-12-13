import 'package:aplikasi_grocery/content/dashboard_frozen_food.dart';
import 'package:aplikasi_grocery/content/dashboard_protein.dart';
import 'package:aplikasi_grocery/content/favorit.dart';
import 'package:aplikasi_grocery/content/notifikasi.dart';
import 'package:aplikasi_grocery/content/dashboard_buah.dart';
import 'package:aplikasi_grocery/content/profil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: BerandaSayur(),
    );
  }
}

class BerandaSayur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, Andreas!'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Cart functionality
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Apa yang anda inginkan?',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ActionChip(
                  label: Text('Sayur'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BerandaSayur()),
                    );
                  },
                ),
                ActionChip(
                  label: Text('Buah'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dasboard_buah()),
                    );
                  },
                ),
                ActionChip(
                  label: Text('Protein'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard_protein()),
                    );
                  },
                ),
                ActionChip(
                  label: Text('Frozen food'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dasboard_forzen_food()),
                    );
                  },
                ),
              ],
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  buildItemCard('Tomat 1 kg', 'Rp. 17,000', Colors.red),
                  buildItemCard('Cabai Merah 1 kg', 'Rp. 47,000', Colors.red),
                  buildItemCard('Kol 1 kg', 'Rp. 16,000', Colors.green),
                  buildItemCard('Pakcoy 250 gr', 'Rp. 9,000', Colors.green),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Favorite()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifikasi()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profil()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemCard(String title, String price, Color color) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image, size: 50, color: color),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(price),
        ],
      ),
    );
  }
}



class CategoryPage extends StatelessWidget {
  final String category;

  CategoryPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$category Category')),
      body: Center(child: Text('Welcome to $category page')),
    );
  }
}
