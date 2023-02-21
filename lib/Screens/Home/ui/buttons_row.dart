import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key, required this.leadingIcon, required this.text, this.lastIcon});
  final Icon leadingIcon;
  final String text;
  final Icon? lastIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 9.0),
      margin: const EdgeInsets.only(right: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        children: [
          leadingIcon,
          Text(text, style: const TextStyle(fontSize: 11.0, fontWeight:  FontWeight.w400),),
          if(lastIcon != null) lastIcon!,
        ],
      ),
    );
  }
}