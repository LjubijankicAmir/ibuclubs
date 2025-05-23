import 'package:flutter/material.dart';
import 'package:ibuclubs_mobile/core/presentation/style.dart';

class PrimaryButton extends StatelessWidget {
  final ButtonType buttonType;
  final Color? startColor;
  final Color? endColor;
  final Function()? onPressed;
  final Widget? trailing;
  final Widget? leading;
  final String text;
  final bool fullWidth;
  final bool active;

  const PrimaryButton({
    super.key,
    this.buttonType = ButtonType.primary,
    this.startColor,
    this.endColor,
    this.fullWidth = true,
    this.active = true,
    required this.onPressed,
    this.trailing,
    this.leading,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return buttonType == ButtonType.primary
        ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            elevation: 0,
            padding: EdgeInsets.all(0),
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: kDefaultBorderRadius),
          ),
          onPressed: active ? onPressed : () {},
          child: Ink(
            decoration:
                active
                    ? BoxDecoration(
                      borderRadius: kDefaultBorderRadius,
                      color: Theme.of(context).primaryColor,
                    )
                    : BoxDecoration(
                      borderRadius: kDefaultBorderRadius,
                      color: Theme.of(context).disabledColor,
                    ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
                children: [
                  leading != null
                      ? Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: leading,
                      )
                      : SizedBox.shrink(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Text(
                      text.toUpperCase(),
                      style: const TextStyle(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  trailing != null
                      ? Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: trailing,
                      )
                      : SizedBox.shrink(),
                ],
              ),
            ),
          ),
        )
        : TextButton.icon(
          onPressed: onPressed,
          label: Text(text),
          icon: trailing ?? leading ?? const SizedBox.shrink(),
          iconAlignment:
              trailing == null ? IconAlignment.start : IconAlignment.end,
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).primaryColor,
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
  }
}

enum ButtonType { primary, secondary }
