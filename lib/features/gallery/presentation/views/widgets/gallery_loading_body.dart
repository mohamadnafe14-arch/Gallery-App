import 'package:flutter/material.dart';

class GalleryLoadingBody extends StatelessWidget {
  const GalleryLoadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
