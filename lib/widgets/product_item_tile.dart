import 'package:flutter/material.dart';
import 'package:myntra_clone_ui/model/product_model.dart';

Widget productItemTile(ProductModel item) {
  return Container(
    margin: const EdgeInsets.only(right: 1),
    height: 300,
    color: Colors.white,
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.network(
              item.imageId,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 5, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.productName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Text(
                item.category,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('₹${item.currentPrice}'),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    '₹${item.previousPrice}',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${item.offervalue}%',
                style: const TextStyle(
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
