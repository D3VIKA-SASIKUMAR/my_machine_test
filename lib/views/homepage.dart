import 'package:flutter/material.dart';
import 'package:flutterapi/controller/controlller.dart';
import 'package:flutterapi/widgets/product_tile.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';



class HomePageView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Rest API"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height:20,),

          Expanded(
            child: Obx(
                  () {
                if (productController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.separated(

                    itemCount: productController.productList.length,
                    itemBuilder: (context, index) {
                      return ProductTile(productController.productList[index]);
                    },
                    separatorBuilder: ( context, int index) {
                      return Divider(thickness: 4,color: Colors.black12,);
                    },

                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}