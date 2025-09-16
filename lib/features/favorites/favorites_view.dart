import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_text_styles.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          AppStrings.favorites,
          style: AppTextStyles.heading3,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.onPrimary),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.favorite_border,
              size: 64,
              color: AppColors.textSecondary,
            ),
            SizedBox(height: 16),
            Text(
              'No favorite movies yet',
              style: AppTextStyles.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
