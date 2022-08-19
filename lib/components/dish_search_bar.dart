import 'package:flutter/material.dart';

class DishSearchBarWidget extends StatelessWidget {
  const DishSearchBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: 'Ingredients / Dish',
      ),
    );
  }
}