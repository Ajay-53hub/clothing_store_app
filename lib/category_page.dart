import 'package:flutter/material.dart';
import 'product_list_page.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          categoryCard(context, Icons.man, "Men"),
          categoryCard(context, Icons.woman, "Women"),
          categoryCard(context, Icons.boy, "Boys"),
          categoryCard(context, Icons.girl, "Girls"),
          categoryCard(context, Icons.child_care, "Kids"),
          categoryCard(context, Icons.store, "All Products"),
        ],
      ),
    );
  }

  Widget categoryCard(BuildContext context, IconData icon, String title) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProductListPage(),
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: Colors.blue,
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// Removed duplicate image-based categoryCard to avoid conflicts.