import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  Widget photo;
  String title;
  String address;
  int price;

  Product(this.photo, this.title, this.address, this.price);

}

class ProductTile extends StatelessWidget {
  ProductTile(this._product);
  final Product _product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: _product.photo,
          ),
          Expanded(
            flex: 3,
            child: _ProductDescription(
              _product
            ),
          ),
          const Icon(
            Icons.more_vert,
            size: 16.0,
          ),
        ],
      ),
    );
  }
}

class _ProductDescription extends StatelessWidget {
  _ProductDescription(this._product);
  final Product _product;

  @override
  Widget build(BuildContext context) {
    final int price = _product.price;
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            _product.title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            _product.address,
            style: const TextStyle(fontSize: 10.0),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$price 원',
            style: const TextStyle(fontSize: 13.0,fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}