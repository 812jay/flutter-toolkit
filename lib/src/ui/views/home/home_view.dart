import 'package:flutter/material.dart';
import 'package:flutter_toolkit/src/ui/views/base_view.dart';
import 'package:flutter_toolkit/src/ui/views/home/home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModel: HomeViewModel(),
      builder: (context, viewModel) {
        return const Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Home',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
