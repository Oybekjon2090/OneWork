import 'package:flutter/material.dart';

class CustomTextFrom extends StatelessWidget {
  
  final String hintext;
  final Widget? suffixicon;
  final Icon? perfixicon;

  final TextInputType keyboardType;

  final String? label;

  final ValueChanged<String>? onChange;

  const CustomTextFrom(
      {Key? key,
      
      required this.hintext,
      this.keyboardType = TextInputType.text,
      this.suffixicon,
      this.label,
      this.onChange, 
      this.perfixicon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return '';
      },
      
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text('$label'),
        labelStyle: TextStyle(color: Color(0xffBDBEC2)),
        hintText: hintext,
        contentPadding:
            const EdgeInsets.only(left: 24, right: 80, top: 12, bottom: 12),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 0.0),
        ),
        focusedErrorBorder: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.blue, width: 0.0),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffAFB0B6)),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffAFB0B6)),
            borderRadius: BorderRadius.all(Radius.circular(12))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffAFB0B6)),
            borderRadius: BorderRadius.all(Radius.circular(12))),
      ),
    );
  }
}
