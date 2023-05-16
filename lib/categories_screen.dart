import 'package:flutter/material.dart';
import './category_item.dart';
import 'dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  // const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Food App',
          ),
        ),
        body: GridView(
          padding: EdgeInsets.all(15),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: [
            ...DUMMY_CATEGORIES
                .map(
                  (catData) => CategoryItem(
                    catData.id,
                    catData.title,
                    catData.color,
                  ),
                )
                .toList()
          ],
        ),
      ),
    );
  }
}
