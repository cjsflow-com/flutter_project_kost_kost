import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class DialogHelper{

  static showSnackBar({required BuildContext context, required String text}){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text)));
  }

  static goNamed({required BuildContext context, required String nameRoutes}){
    context.goNamed(nameRoutes);
  }
  static pushNamed({required BuildContext context, required String nameRoutes}){
    context.pushNamed(nameRoutes);
  }

  static showSnackBarWithBackground({required BuildContext context, required String text, required Color colors}){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(text),backgroundColor: colors,));
  }
}