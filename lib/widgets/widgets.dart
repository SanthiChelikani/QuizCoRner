

import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {


  return RichText(
    text: TextSpan(

      style: TextStyle(fontSize: 50),
      children: const <TextSpan>[
        TextSpan(text: 'Q', style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black87)),
        TextSpan(text: 'uiz',style: TextStyle(fontWeight: FontWeight.w400,color:Colors.black87)),
        TextSpan(text: 'C',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.red)),
        TextSpan(text: 'oRner',style: TextStyle(fontWeight: FontWeight.w400,color:Colors.red)),

      ],
    ),
  );
}
