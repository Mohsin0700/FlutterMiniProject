import 'package:flutter/material.dart';
import 'package:mini_project/Constants/app_colors.dart';
import 'package:mini_project/screens/single_page_screen/widgets/item_details.dart';
import 'package:mini_project/screens/single_page_screen/widgets/item_name.dart';
import 'package:mini_project/screens/single_page_screen/widgets/item_rate.dart';
import 'package:mini_project/screens/single_page_screen/widgets/single_page_title_cart.dart';
import 'package:mini_project/screens/single_page_screen/widgets/slider.dart';
// import 'package:mini_project/screens/single_page_screen/widgets/slider.dart';

class SinglePageScreen extends StatelessWidget {
  const SinglePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_ios)),
                  Text(
                    'Product Name',
                    style: TextStyle(fontSize: 16, color: MyAppColors.black3),
                  ),
                  const SinglePageTitleCart(),
                ],
              ),
              const Expanded(child: MyCarousel()),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: const Color(0xffF8F9FB),
                      borderRadius: BorderRadius.circular(45)),
                  width: double.infinity,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ItemName(), ItemRate(), ItemDetails()],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
