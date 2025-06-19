import 'package:flutter/material.dart';

class SafeSafaiCheckboxTheme{
  SafeSafaiCheckboxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if (states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    checkColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.white;
      }else{
        return Colors.black;
      }
    }),

    fillColor: WidgetStateProperty.resolveWith((states){
      if(states.contains(WidgetState.selected)){
        return Colors.blue;
      }else{
        return Colors.transparent;
      }
    })
  );
}