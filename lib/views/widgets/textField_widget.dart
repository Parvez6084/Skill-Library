import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldWidget extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final List<TextInputFormatter>? textFormat;

  const TextFieldWidget({
    Key? key,
    this.textFormat,
    required this.controller,
    required this.keyboardType,
    required this.onChanged,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
       const SizedBox(height: 4),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextFormField(
            style: const TextStyle(color: Colors.black),
            controller: controller,
            keyboardType: keyboardType,
            onChanged: onChanged,
           decoration: InputDecoration(
             prefixIcon: const Icon(Icons.search),
             suffixIcon: const Icon(Icons.filter_list),
                fillColor: Colors.white,
                filled: true,
                hintText: label,
                contentPadding: const EdgeInsets.all(8),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.all(Radius.circular(8)))),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
