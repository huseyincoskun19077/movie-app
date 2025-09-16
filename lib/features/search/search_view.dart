import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_text_styles.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          AppStrings.search,
          style: AppTextStyles.heading3,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.onPrimary),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          Expanded(
            child: _isSearching
                ? _buildSearchResults()
                : _buildSearchHint(),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: _searchController,
        style: AppTextStyles.bodyMedium,
        decoration: const InputDecoration(
          hintText: AppStrings.searchMovies,
          hintStyle: TextStyle(color: AppColors.textSecondary),
          prefixIcon: Icon(Icons.search, color: AppColors.textSecondary),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
        onChanged: (value) {
          setState(() {
            _isSearching = value.isNotEmpty;
          });
        },
      ),
    );
  }

  Widget _buildSearchResults() {
    return const Center(
      child: Text(
        AppStrings.noResults,
        style: AppTextStyles.bodyMedium,
      ),
    );
  }

  Widget _buildSearchHint() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 64,
            color: AppColors.textSecondary,
          ),
          SizedBox(height: 16),
          Text(
            AppStrings.searchMovies,
            style: AppTextStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}
