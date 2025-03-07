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
      backgroundColor: Colors.white,
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
            child: Column(
              children: [
                Container(

                    child: ExpandableText(
                        text: "Do nhà có chuyện gấp nên cần sang tất cả các giày dép người lớn và trẻ em cho ai cần ib e ạ đầy đủ dép quảng châu dép thường sandan ,giày thể thao ,cặp Do nhà có chuyện gấp nên cần sang tất cả các giày dép người lớn và trẻ em cho ai cần ib e ạ đầy đủ dép quảng châu dép thường sandan ,giày thể thao ,cặp "),
                margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),),
              ],
            ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20*5.5,
              right: Dimensions.width20*5.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove, iconColor: Colors.white, bgColor: AppColors.mainColor, size: Dimensions.iconSize24,),
                BigText(text: "\$12.88 x 0", color: AppColors.mainBlackColor, size: Dimensions.font26,),
                AppIcon(icon: Icons.add, iconColor: Colors.white, bgColor: AppColors.mainColor, size: Dimensions.iconSize24,),
              ]
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height20,
                left: Dimensions.width30,
                right: Dimensions.width30
            ),
            decoration: BoxDecoration(
                color: AppColors.buttonBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20*2),
                    topRight: Radius.circular(Dimensions.radius20*2)
                )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child: Icon(Icons.favorite, color: AppColors.mainColor,),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20
                  ),
                  child: BigText(text: " \$10 | Add to cart", color: Colors.white,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: AppColors.mainColor
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
