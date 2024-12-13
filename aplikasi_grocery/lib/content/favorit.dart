import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
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
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: [
            buildFavoriteItemCard('Tomat 1 kg', 'Rp. 17,000', 'assets/tomat.png'),
            buildFavoriteItemCard('Cabai Merah 1 kg', 'Rp. 47,000', 'assets/cabai_merah.png'),
            buildFavoriteItemCard('Ayam 1 Ekor', 'Rp. 44,000', 'assets/ayam.png'),
            buildFavoriteItemCard('Daging Sapi 250 gr', 'Rp. 46,000', 'assets/daging_sapi.png'),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                // Navigate to Notifications Page
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Navigate to Profile Page
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFavoriteItemCard(String title, String price, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 80,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(price),
          IconButton(
            icon: Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              // Remove from favorites functionality
            },
          ),
        ],
      ),
    );
  }
}
