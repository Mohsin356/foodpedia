import 'package:flutter/material.dart';
import 'package:foodpedia/controllers/categoryListController.dart';
import 'package:foodpedia/utils/colors.dart';
import 'package:foodpedia/views/widgets/appBarWidget.dart';
import 'package:get/get.dart';

class ItemDetail extends StatelessWidget {
  ItemDetail({Key? key}) : super(key: key);
    final categoryListItem= Get.find<CategoryListController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(titleTxt: 'Detail of Item',implyLeading: true,
      appBarBgClr: UiColors.appBarClr,titleTxtClr: UiColors.appBarTxtClr,),
    );
  }
}
