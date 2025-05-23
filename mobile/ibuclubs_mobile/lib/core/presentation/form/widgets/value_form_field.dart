import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ibuclubs_mobile/core/domain/value_object.dart';
import 'package:ibuclubs_mobile/core/presentation/form/value_form_field.dart'
    as ff;
import 'package:ibuclubs_mobile/core/presentation/hooks/focus_node_hook.dart';

class ValueFormField extends StatefulWidget {
  @override
  createState() => _ValueFormFieldState();

  final String fieldName;
  final ff.ValueFormField<ValueObject<Object>> formField;
  final void Function() onLeft;
  final void Function(String value) onChanged;
  final TextInputType inputType;
  final int? lines;
  final int? maxLength;
  final Widget? suffixWidget;
  final bool secret;

  const ValueFormField({
    super.key,
    required this.fieldName,
    required this.formField,
    required this.onLeft,
    required this.onChanged,
    this.inputType = TextInputType.text,
    this.lines,
    this.maxLength,
    this.suffixWidget,
    this.secret = false,
  });
}

class _ValueFormFieldState extends State<ValueFormField> {
  late bool textVisibility;

  @override
  void initState() {
    super.initState();
    textVisibility = widget.secret;
  }

  @override
  Widget build(BuildContext context) {
    void hide() {
      setState(() {
        textVisibility = !textVisibility;
      });
    }

    return HookBuilder(
      builder: (context) {
        final focusNode = use(
          FocusNodeHook(onElementLeft: () => widget.onLeft.call()),
        );

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: TextFormField(
            initialValue: widget.formField.input.value.toString(),
            cursorColor: Colors.black,
            style: const TextStyle(
              fontSize: kDefaultFontSize,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              errorMaxLines: 3,
              hintText: widget.fieldName,
              suffixIcon:
                  widget.secret
                      ? IconButton(
                        icon: Icon(
                          textVisibility
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 18,
                        ),
                        onPressed: hide,
                      )
                      : widget.suffixWidget,
              counterText: "",
            ),
            obscureText: textVisibility,
            maxLines: widget.lines ?? 1,
            enableSuggestions: !widget.secret,
            autocorrect: !widget.secret,
            keyboardType: widget.inputType,
            autovalidateMode: widget.formField.fieldState.when(
              pure: () => AutovalidateMode.disabled,
              touched: () => AutovalidateMode.disabled,
              dirty: () => AutovalidateMode.always,
            ),
            validator:
                (_) => widget.formField.input.failure.fold(
                  () => null,
                  (failure) => failure.error,
                ),
            focusNode: focusNode,
            onChanged: widget.onChanged,
            maxLength: widget.maxLength,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
          ),
        );
      },
    );
  }
}
