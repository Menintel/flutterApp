import 'package:flutter/material.dart';
import 'package:shopper/utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,

          //padding: const EdgeInsets.only(bottom: 0),
        
          /// - - - If 
          child: Stack(
            children: [
              /// - - - Background Custome Shapes
              Positioned( top: -150, right: -150, child: TCircularContainer()),
              Positioned( top: 100, right: -250, child: TCircularContainer(
                    // backgroundColor: Color.fromRGBO(255, 0, 0, 0.1), 
                  ),
                ),
               child,
            ],
          ),
        ),
      ),
    );
  }
}