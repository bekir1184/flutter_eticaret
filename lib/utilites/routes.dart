import 'package:eticaret/screens/productDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:eticaret/utilites/constants.dart';

class Routes {
  static final routes =<String,WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL:(BuildContext context)=>ProductDetail()
  };
}