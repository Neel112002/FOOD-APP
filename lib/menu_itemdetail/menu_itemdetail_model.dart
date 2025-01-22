import '/flutter_flow/flutter_flow_util.dart';
import 'menu_itemdetail_widget.dart' show MenuItemdetailWidget;
import 'package:flutter/material.dart';

class MenuItemdetailModel extends FlutterFlowModel<MenuItemdetailWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
