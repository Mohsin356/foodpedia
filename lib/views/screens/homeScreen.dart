import 'package:flutter/material.dart';
import 'package:foodpedia/categoriesList.dart';
import 'package:foodpedia/utils/colors.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Foodpedia",style: TextStyle(color: UiColors.appBarTxtClr),),
        ),
        body: Column(
          children: [
            const Padding(
              padding:  EdgeInsets.only(top: 15),
              child: Center(child:  Text('Categories',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                    color: UiColors.headingTxtClr),),),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7,vertical: 20),
                child: GridView.builder(
                  itemCount: categoriesData.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    maxCrossAxisExtent: 200,
                  ), itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: UiColors.cardClr,
                    shadowColor: UiColors.cardClr,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                            child: Image.asset(categoriesData[index].image!),),
                          Center(child: Text(categoriesData[index].title!,
                            style: const TextStyle(fontSize:18,color: UiColors.cardTitleClr,),),)
                        ],
                      ),
                    ),
                  );
                },
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}
