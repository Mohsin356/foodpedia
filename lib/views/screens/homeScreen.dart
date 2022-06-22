import 'package:flutter/material.dart';
import 'package:foodpedia/categoriesList.dart';
import 'package:foodpedia/utils/colors.dart';
import 'package:foodpedia/views/widgets/categoryCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: UiColors.appBarClr,
        title: const Text("Foodpedia",style: TextStyle(fontWeight: FontWeight.bold,color: UiColors.appBarTxtClr),),
      ),
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
                  children: fastFoodData.map((list)=>CardWidget(txt: list.title!,
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
                  children: desiData.map((list)=>CardWidget(txt: list.title!,
                    imagePath: list.image!,cardColor: UiColors.cardClr,)).toList(),
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
                  children: sweetsData.map((list)=>CardWidget(txt: list.title!,
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
