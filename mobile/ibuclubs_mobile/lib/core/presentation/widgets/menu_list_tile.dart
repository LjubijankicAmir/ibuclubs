import 'package:flutter/material.dart';

class MenuListTile extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final Function()? onPressed;
  final bool hasTrailing;
  final Widget? leading;

  const MenuListTile({
    super.key,
    required this.title,
    this.onPressed,
    this.titleColor,
    this.leading,
    this.hasTrailing = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ListTile(
        leading: leading,
        title: Text(
          title,
          style: TextStyle(
            color: titleColor ?? Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        trailing:
            hasTrailing ? const Icon(Icons.chevron_right, size: 30) : null,
      ),
    );
  }
}
