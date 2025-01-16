
import 'package:flutter/material.dart';

import '../../../core/global_widgets/text_styles.dart';

class customField extends StatelessWidget {
  const customField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
       contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        label: Text("Company Tag"),
        labelStyle: poppinsStyles(
        12,Color(0xff8B8B8B),FontWeight.w300
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xff7A7A7A),
        
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Color(0xff7A7A7A))
        ),
      ),
    );
  }
}