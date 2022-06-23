import 'package:flutter/material.dart';
import 'package:foodpedia/controllers/categoryListController.dart';
import 'package:foodpedia/utils/colors.dart';
import 'package:foodpedia/views/widgets/categoryCard.dart';
import 'package:foodpedia/views/widgets/appBarWidget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final listItems =Get.put(CategoryListController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleTxt: 'Foodpedia',appBarBgClr: UiColors.appBarClr,
        titleTxtClr: UiColors.appBarTxtClr,implyLeading: false,),
      body: SingleChildScrollView(
        child: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: const AssetImage("assets/images/background.jpg"),
              colorFilter:  ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child: Center(child:  Text('Fast Food',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                      color: UiColors.headingTxtClr,),),),
              ),
              SizedBox(
                height: 160,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: listItems.fastFoodList.map((list)=>CardWidget(txt: list.title!,
                   imagePath: list.image!,cardColor: UiColors.cardClr,)).toList(),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child: Center(child:  Text('Desi Food',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                    color: UiColors.headingTxtClr,),),),
              ),
              SizedBox(
                height: 160,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: listItems.desiFoodList.map((list)=>CardWidget(txt: list.title!,
                    imagePath: list.image!,cardColor: UiColors.secondListCardClr,)).toList(),
                ),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child: Center(child:  Text('Sweets',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                    color: UiColors.headingTxtClr,),),),
              ),
              SizedBox(
                height: 160,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: listItems.sweetsList.map((list)=>CardWidget(txt: list.title!,
                    imagePath: list.image!,cardColor: UiColors.cardClr,)).toList(),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
