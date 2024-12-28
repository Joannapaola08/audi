import 'package:flutter/material.dart';

import 'category.dart';

class Categorias extends StatelessWidget {
  const Categorias({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemCount: categorias.length,
          itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(
                    categorias [index].image),fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Text(categorias [index].title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),),
            ],
          );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 20,),
          ),
    );
  }
}
