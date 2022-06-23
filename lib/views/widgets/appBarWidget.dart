
import 'package:flutter/material.dart';
class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final Color? appBarBgClr;
  final String? titleTxt;
  final Color? titleTxtClr;
  final bool? implyLeading;
  const AppBarWidget({Key? key,this.appBarBgClr,this.titleTxt,this.titleTxtClr,this.implyLeading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarBgClr,
      automaticallyImplyLeading: implyLeading!,
      title: Text(titleTxt!,style: TextStyle(fontWeight: FontWeight.bold,color:titleTxtClr),),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
