import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:untitled1/controller/productdetails_controller.dart';
import 'package:untitled1/core/constent/color.dart';
import 'package:untitled1/view/widget/product_details.dart/comments.dart';
import 'package:untitled1/view/widget/product_details.dart/top_productdetails.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    // ProductDetailsControllerImp controller =
    Get.put(ProductDetailsControllerImp());
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 40,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: AppColor.primarycolor,
          onPressed: () {},
          child: const Text(
            'Download',
            style: TextStyle(
                color: AppColor.grey,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView(
        children: [
          const TopProductDetails(),
          const SizedBox(
            height: 100,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("A Game of Thrones",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColor.grey)
                    // Theme.of(context).textTheme.headlineMedium
                    // .(color: ColorApp.grey),
                    ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    " asdfg sdfgb xcvb qwer yj ghj qwer rty  yui uio as dfg ghj jkl,cvbnmjgb.asdfg sdfgb xcvb qwer yj ghj qwer rty  yui uio as dfg ghj jkl,cvbnmjgbasdfg sdfgb xcvb qwer yj ghj qwer rty  yui uio as dfg ghj jkl,cvbnmjgb",
                    style: TextStyle(fontSize: 18, color: AppColor.grey)),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Rating',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(bottom: 5),
                        height: 60,
                        width: 250,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColor.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: RatingBar.builder(
                            itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                            onRatingUpdate: (rating) {}))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(bottom: 5),
                        height: 60,
                        width: 250,

                        // decoration: BoxDecoration(
                        //     border: Border.all(color: ColorApp.grey),
                        //     borderRadius: BorderRadius.circular(10)),
                        child: const Text(
                          'Community Reviews',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColor.grey),
                        ),
                      ),
                    )
                  ],
                ),
                Comments(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
