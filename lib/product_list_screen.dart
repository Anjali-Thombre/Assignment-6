import 'package:flutter/material.dart';
import 'plant_model.dart';
import 'dummy_data.dart';
import 'product_detail_screen.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant Shop'),
      ),
      body: ListView.builder(
        itemCount: dummyPlants.length,
        itemBuilder: (ctx, index) {
          final plant = dummyPlants[index];
          return ListTile(
            leading: Image.network(plant.imageUrl, width: 50, height: 50),
            title: Text(plant.name),
            subtitle: Text('\$${plant.price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(plant: plant),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
