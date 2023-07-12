
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

alertDialog(BuildContext context, String msg){
   Toast.show("Please Enter User ID",
          duration: Toast.lengthLong, gravity: Toast.bottom);
}