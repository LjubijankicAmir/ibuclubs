import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class FocusNodeHook extends Hook<FocusNode> {
  final Function() onElementLeft;

  const FocusNodeHook({required this.onElementLeft});

  @override
  createState() => _FocusNodeHookState();
}

class _FocusNodeHookState extends HookState<FocusNode, FocusNodeHook> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initHook() {
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) hook.onElementLeft.call();
    });
  }

  @override
  void dispose() => _focusNode.dispose();

  @override
  FocusNode build(BuildContext context) => _focusNode;
}
