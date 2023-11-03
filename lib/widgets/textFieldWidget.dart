import 'package:flutter/material.dart';
import 'package:flutter_node/constant.dart';

class TextFieldWidget extends StatefulWidget {
  final String titre;
  final TextEditingController textEditingController;
  final Widget? iconSuffix;
  const TextFieldWidget(
      {super.key, required this.titre, required this.textEditingController,this.iconSuffix});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titre,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
            decoration: InputDecoration(
                border: myinputborder(), //normal border
                enabledBorder: myinputborder(), //enabled border
                focusedBorder: myinputborder(),
                suffixIcon: widget.iconSuffix //focused border
                // set more border style like disabledBorder
                ))
      ],
    );
  }
}
