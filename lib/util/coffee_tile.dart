import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTile({
    super.key,
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
        child: Container(
          padding: const EdgeInsets.all(12),
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Coffee images
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(coffeeImagePath),
              ),

              // Coffee name
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coffeeName,
                      style: const TextStyle(fontSize: 20),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "With almond Milk",
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
              ),
              //Price
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(coffeePrice),
                    Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)),
                      child: const Icon(Icons.coffee),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
