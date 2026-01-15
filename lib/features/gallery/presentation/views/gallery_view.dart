import 'package:flutter/material.dart';
import 'package:gallery_app/features/gallery/presentation/views/widgets/gallery_view_body.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: GalleryViewBody()));
  }
}
