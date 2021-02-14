import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:outfitr/values/values.dart';

class OutfitrInputTextField extends StatelessWidget {
  OutfitrInputTextField({
    this.keyboardType = TextInputType.emailAddress,
    this.prefixIcon,
    this.defaultPrefixIcon = FeatherIcons.mail,
    this.defaultPrefixIconColor = AppColors.primaryColor,
    this.border = Borders.outfitrBorder,
    this.enabledBorder = Borders.outfitrBorder,
    this.focusedBorder = Borders.outfitrFocusedBorder,
  });

  final TextInputType keyboardType;
  final Widget prefixIcon;
  final IconData defaultPrefixIcon;
  final Color defaultPrefixIconColor;
  final InputBorder border;
  final InputBorder enabledBorder;
  final InputBorder focusedBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon ??
            Icon(
              defaultPrefixIcon,
              color: defaultPrefixIconColor,
            ),
        border: border,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
      ),
    );
  }
}
