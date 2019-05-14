import 'package:flutter/material.dart';

class Products extends StatelessWidget{
  final List<String> products;
  Products(this.products){
    print("products widget construtor SUP");
  }

  @override
  Widget build(BuildContext context) {
    print("products widget construtor builddd");
    return Column(
                  children: products.map(
                (element) => Card(
                      child: Column(
                        children: <Widget>[
                          Image.asset('assets/cheesecake.jpg'),
                          Text(element)
                      
                        ],
                      ),
                    ),
              ).toList());
  }
}



                