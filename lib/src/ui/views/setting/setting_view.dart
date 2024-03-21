import 'package:flutter/material.dart';
import 'package:flutter_toolkit/src/ui/views/base_view.dart';
import 'package:flutter_toolkit/src/ui/views/setting/setting_view_model.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: SettingViewModel(),
      builder: (context, viewModel) {
        return const Scaffold(
          body: Center(
            child: Text('Setting'),
          ),
        );
      },
    );
  }
}
