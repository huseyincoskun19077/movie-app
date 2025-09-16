import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_text_styles.dart';

class MovieDetailView extends StatelessWidget {
  const MovieDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          AppStrings.movieDetails,
          style: AppTextStyles.heading3,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.onPrimary),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: AppColors.onPrimary),
            onPressed: () {
              // Add to favorites functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMoviePoster(),
            _buildMovieInfo(),
            _buildOverview(),
          ],
        ),
      ),
    );
  }

  Widget _buildMoviePoster() {
    return Container(
      height: 300,
      width: double.infinity,
      color: AppColors.surface,
      child: const Center(
        child: Icon(
          Icons.movie,
          size: 100,
          color: AppColors.accent,
        ),
      ),
    );
  }

  Widget _buildMovieInfo() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Sample Movie Title',
            style: AppTextStyles.heading2,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.star, color: AppColors.accent, size: 20),
              const SizedBox(width: 4),
              const Text('8.5', style: AppTextStyles.bodyMedium),
              const SizedBox(width: 16),
              const Text('2023', style: AppTextStyles.bodyMedium),
            ],
          ),
          const SizedBox(height: 16),
          _buildInfoRow(AppStrings.genre, 'Action, Drama'),
          _buildInfoRow(AppStrings.runtime, '148 min'),
          _buildInfoRow(AppStrings.releaseDate, 'July 21, 2023'),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: AppTextStyles.bodySmall,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: AppTextStyles.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOverview() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            AppStrings.overview,
            style: AppTextStyles.heading3,
          ),
          const SizedBox(height: 8),
          const Text(
            'This is a sample movie overview. In a real application, this would contain the actual movie description from the API.',
            style: AppTextStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}
