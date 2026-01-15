import 'package:flutter/material.dart';

class GalleryErrorBody extends StatelessWidget {
  const GalleryErrorBody({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.error, color: Colors.red, size: 60),
          Text(errorMessage),
        ],
      ),
    );
  }
}
