import 'package:flutter/material.dart';

class ButtonsRow extends StatelessWidget {
  const ButtonsRow({super.key, required this.leadingIcon, required this.text, this.lastIcon, this.isSeleted = false});
  final Icon leadingIcon;
  final String text;
  final Icon? lastIcon;
  final bool isSeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 9.0),
      decoration: BoxDecoration(
        color: isSeleted? const Color.fromRGBO(239, 255, 246, 1): Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: isSeleted? Colors.green: Colors.black, width: 1),
      ),
      child: Row(
        children: [
          leadingIcon,
          Text(text, style: TextStyle(fontSize: 11.0, fontWeight:  FontWeight.w400, color: isSeleted? Colors.green: Colors.black),),
          if(lastIcon != null) lastIcon!,
        ],
      ),
    );
  }
}