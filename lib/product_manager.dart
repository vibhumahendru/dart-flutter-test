import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager({this.startingProduct= "sweets tester"}){
    print("product manager") ;
  }

  @override
  State <StatefulWidget> createState(){
    print("product manager state");
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager>{
  List<String> _products = [];
  
  @override
  void initState() {
    print("product manager init") ;
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("product manager build");
    return Column(children: [Container(
                margin: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState((){
                      _products.add('advanced food tester');
                
                    });
                  },
                  child: Text('Add Product'),
                
                ),
              ),
              Products(_products),
              
    ],);
  }
}