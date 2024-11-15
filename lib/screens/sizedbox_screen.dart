import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/sizedbox_viewmodel.dart';

class SizedBoxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<SizedBoxViewModel>(),
      child: Consumer<SizedBoxViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text("SizedBox Widget with MVVM"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: viewModel.width,
                    height: viewModel.height,
                    child: Container(
                      color: Colors.blueAccent,
                      child: Center(
                        child: Text(
                          "SizedBox ${viewModel.width}x${viewModel.height}",
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => viewModel.updateDimensions(150, 150),
                      child: Text("150x150"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => viewModel.updateDimensions(200, 100),
                      child: Text("200x100"),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => viewModel.updateDimensions(100, 200),
                      child: Text("100x200"),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
