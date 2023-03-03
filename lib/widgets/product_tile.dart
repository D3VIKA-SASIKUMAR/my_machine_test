import 'package:flutterapi/models/model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  final Welcome welcome;
  ProductTile(this.welcome);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ID=${welcome.id.toString()}'),
              Text('Email is ${welcome.email.toString()}'),
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Username is ${welcome.username.toString()}'),
              Text('Website is ${welcome.website.toString()}'),
            ],
          ),

        ],
      ),
    );
  }
}