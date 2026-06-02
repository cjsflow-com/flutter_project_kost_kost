import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class DialogHelper{
  static goNamed({required BuildContext context, required String nameRoutes}){
    context.goNamed(nameRoutes);
  }
  static pushNamed({required BuildContext context, required String nameRoutes}){
    context.pushNamed(nameRoutes);
  }
}