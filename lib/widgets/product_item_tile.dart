import 'package:flutter/material.dart';
import 'package:myntra_clone_ui/model/product_model.dart';

Widget productItemTile(ProductModel item) {
  return Container(
    margin: EdgeInsets.only(right: 1),
    height: 300,
    color: Colors.white,
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 5, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.productName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Text(
                item.category,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('₹${item.currentPrice}'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '₹${item.previousPrice}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${item.offervalue}%',
                style: TextStyle(
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
