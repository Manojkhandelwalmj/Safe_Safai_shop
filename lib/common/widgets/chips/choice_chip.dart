import 'package:flutter/material.dart';
import 'package:safe_safai_shop/common/widgets/custom_shapes/containers/circular_containers.dart';
import 'package:safe_safai_shop/utils/constants/colors.dart';
import 'package:safe_safai_shop/utils/helpers/helper_functions.dart';

class SafeSafaiChoiceChip extends StatelessWidget {
  const SafeSafaiChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = SafeSafaiHelperFunctions.getColor(text) != null;
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor
            ? const SizedBox()
            : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? SafeSafaiColors.white : null),
        avatar: isColor
            ? SafeSafaiCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: SafeSafaiHelperFunctions.getColor(text)!)
            : null,
        shape: isColor? CircleBorder(): null,
        labelPadding: isColor ?EdgeInsets.zero : null,
        // make icon in center
        padding: isColor ? EdgeInsets.zero : null,
        backgroundColor: isColor ? Colors.green : null,
      ),
    );
  }
}
