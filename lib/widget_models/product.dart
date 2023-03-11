import 'package:flutter/material.dart';
import 'package:shop_app/models/product_model.dart';

class ProductModelUi extends StatelessWidget {
  ProductModelUi({required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 175,
              height: 80,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      offset: Offset(0, 9),
                      color: Colors.grey,
                      spreadRadius: -1)
                ],
              ),
            ),
          ),
          Positioned(
            left: 15,
            child: SizedBox(
              width: 140,
              height: 108,
              child: Image.network(product.image),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 75,
              width: 165,
              // color: Colors.red,
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 9,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 3,
                      ),
                      Text(product.title.substring(0, 12),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                          )),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${product.price}',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
