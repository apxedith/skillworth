import 'package:flutter/material.dart';

class Utils {
  getSafeAreaTop({required BuildContext context}) {
    return MediaQuery.of(context).padding.top;
  }

  getSafeAreaBottom({required BuildContext context}) {
    return MediaQuery.of(context).padding.bottom;
  }

  getSafeAreaLeft({required BuildContext context}) {
    return MediaQuery.of(context).padding.left;
  }

  getSafeAreaRight({required BuildContext context}) {
    return MediaQuery.of(context).padding.right;
  }
}
