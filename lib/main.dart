import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery_app/core/utils/dependecy_injection.dart';
import 'package:gallery_app/features/gallery/data/repo/gallery_repo.dart';
import 'package:gallery_app/features/gallery/presentation/cubit/gallery_cubit/gallery_cubit.dart';
import 'package:gallery_app/features/gallery/presentation/views/gallery_view.dart';

void main() {
  setup();
  runApp(const GalleryApp());
}

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GalleryCubit(getIt.get<GalleryRepo>()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GalleryView(),
      ),
    );
  }
}
