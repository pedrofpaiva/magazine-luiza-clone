import 'package:flutter/material.dart';
import 'package:magazine_luiza/models/product.dart';
import 'package:magazine_luiza/provider/storage.dart';
import 'package:magazine_luiza/style.dart';

import '../../style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ofertas do diasss"),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        separatorBuilder: (BuildContext context, int _) {
          return Divider(
            color: Colors.transparent,
          );
        },
        itemCount: listOfProducts.length,
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Product _product = listOfProducts.elementAt(index);
    return ListTile(
      dense: true,
      leading: Column(
        children: [
          Image.asset(
            _product.photo,
            width: 72,
            height: 72,
          )
        ],
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _product.title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            _product.description,
          ),
          Text(
            _product.price,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: blueTheme,
            ),
          ),
          Text(
            _product.parcelled,
            style: TextStyle(
              color: blueTheme,
            ),
          )
        ],
      ),
      trailing: Container(
        margin: EdgeInsets.only(top: 40),
        child: IconButton(
          icon: Icon(
              (_product.isFavorite) ? Icons.favorite : Icons.favorite_border),
          color: redTheme,
          iconSize: 20,
          onPressed: () {
            setState(() {
              _product.isFavorite = !_product.isFavorite;
            });
          },
        ),
      ),
    );
  }
}
