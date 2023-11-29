import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownWidget<T> extends StatelessWidget {
  final String? hintText;
  final Function(dynamic) onSelect;
  final bool disable;
  final String? Function(String?)? validator;
  final List<T>? items;
  final T? selectedItem;
  const DropDownWidget({super.key, this.disable = false, this.validator, this.hintText, this.items, required this.onSelect, this.selectedItem});

  @override
  Widget build(BuildContext context) {
    context.theme;
    return DropdownButtonFormField2(
      onMenuStateChange: (isOpen) {},

      value: (selectedItem != null) ? selectedItem?.toString() : null,
      decoration: const InputDecoration(
        //Add isDense true and zero Padding.
        //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
        isDense: true,

        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(15),
        // ),
        //Add more decoration as you want here
        //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
      ),

      isExpanded: true,
      hint: Text(hintText ?? ""),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.black45,
      ),
      iconSize: 25,
      buttonHeight: 25,
      // buttonPadding: const EdgeInsets.only(left: 10, right: 10),
      dropdownDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      items: items
          ?.map((item) => DropdownMenuItem<String>(
                value: item.toString(),
                child: Text(
                  item.toString(),
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
              ))
          .toList(),
      validator: validator,

      onChanged: (disable == true)
          ? null
          : (value) {
              //Do something when changing the item if you want.
              print("selected value: $value");

              onSelect(value);
            },
      // onSaved:onSaved,
    );
  }
}

// class DropDownWidget<T> extends StatefulWidget {
//   final String? hintText;
//   final Function(dynamic) onSelect;
//   final bool disable;
//   final String? Function(String?)? validator;
//   final List<T>? items;
//   final T? selectedItem;
//   const DropDownWidget({super.key, this.disable = false, this.validator, this.hintText, this.items, required this.onSelect, this.selectedItem});

//   @override
//   State<DropDownWidget<T>> createState() => _DropDownWidgetState<T>();
// }

// class _DropDownWidgetState<T> extends State<DropDownWidget<T>> {
//   var selectedValue;
//   @override
//   void initState() {
//     // TODO: implement initState
//     selectedValue = widget.selectedItem;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     print("selectedItemdd ${widget.selectedItem.toString()}");
//     context.theme;
//     return DropdownButtonFormField2(
//       onMenuStateChange: (isOpen) {},

//       value: (selectedValue != null) ? selectedValue?.toString() : null,
//       decoration: const InputDecoration(
//         //Add isDense true and zero Padding.
//         //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
//         isDense: true,

//         contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//         // border: OutlineInputBorder(
//         //   borderRadius: BorderRadius.circular(15),
//         // ),
//         //Add more decoration as you want here
//         //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
//       ),

//       isExpanded: true,
//       hint: Text(widget.hintText ?? ""),
//       icon: const Icon(
//         Icons.arrow_drop_down,
//         color: Colors.black45,
//       ),
//       iconSize: 25,
//       buttonHeight: 25,
//       // buttonPadding: const EdgeInsets.only(left: 10, right: 10),
//       dropdownDecoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(5),
//       ),
//       items: widget.items
//           ?.map((item) => DropdownMenuItem<String>(
//                 value: item.toString(),
//                 child: Text(
//                   item.toString(),
//                   style: const TextStyle(
//                     fontSize: 14,
//                   ),
//                 ),
//               ))
//           .toList(),
//       validator: widget.validator,

//       onChanged: (widget.disable == true)
//           ? null
//           : (value) {
//               //Do something when changing the item if you want.
//               print("selected value: $value");

//               widget.onSelect(value);
//               setState(() {
//                 selectedValue = value;
//               });
//             },
//       // onSaved:onSaved,
//     );
//   }
// }
