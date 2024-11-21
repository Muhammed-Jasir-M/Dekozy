import "package:aurakart/common/widgets/custom_shapes/container/circular_container.dart";
import "package:aurakart/common/widgets/custom_shapes/container/primary_header_container.dart";
import "package:aurakart/common/widgets/custom_shapes/curved_edges/curved_edges.dart";
import "package:aurakart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart";
import "package:aurakart/utils/constants/colors.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
