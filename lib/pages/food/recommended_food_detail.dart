import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/dimensions.dart';
import 'package:e_commerce_app/widgets/app_icon.dart';
import 'package:e_commerce_app/widgets/big_text.dart';
import 'package:e_commerce_app/widgets/expandable_text.dart';
import 'package:flutter/material.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20), 
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Dimensions.radius20),
                      topRight: Radius.circular(Dimensions.radius20),
                    )
                  ),
                  child: Center(child: BigText(text:"Sliver app bar",size: Dimensions.font26,)),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10,),
                )
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png", 
                width: double.maxFinite, 
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Expanded(
              child: SingleChildScrollView(
                  child: ExpandableText(text: "Do nhà có chuyện gấp nên cần sang tất cả các giày dép người lớn và trẻ em cho ai cần ib e ạ đầy đủ dép quảng châu dép thường sandan ,giày thể thao ,cặp Do nhà có chuyện gấp nên cần sang tất cả các giày dép người lớn và trẻ em cho ai cần ib e ạ đầy đủ dép quảng châu dép thường sandan ,giày thể thao ,cặp ")),
            ))
        ],
      ),
    );
  }
}
