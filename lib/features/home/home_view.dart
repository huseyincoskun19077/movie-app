import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_text_styles.dart';
import '../../core/models/movie.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  
  // Sample movie data - in real app this would come from API
  final List<Movie> _popularMovies = [
    Movie(
      id: 1,
      title: "The Dark Knight",
      overview: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      posterPath: "/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
      backdropPath: "/hqkIcbrOHL86UncnHIsHVcVmzue.jpg",
      releaseDate: "2008-07-18",
      voteAverage: 8.5,
      voteCount: 12000,
      genreIds: ["Action", "Crime", "Drama"],
      adult: false,
      originalLanguage: "en",
      originalTitle: "The Dark Knight",
      popularity: 123.456,
      video: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: const Text(
          AppStrings.appName,
          style: AppTextStyles.heading3,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.onPrimary),
            onPressed: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(AppStrings.popular),
            _buildMovieSection(_popularMovies),
            const SizedBox(height: 20),
            _buildSectionTitle(AppStrings.topRated),
            _buildMovieSection(_popularMovies),
            const SizedBox(height: 20),
            _buildSectionTitle(AppStrings.upcoming),
            _buildMovieSection(_popularMovies),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: AppTextStyles.heading3,
      ),
    );
  }

  Widget _buildMovieSection(List<Movie> movies) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Container(
            width: 120,
            margin: const EdgeInsets.only(right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.movie,
                      size: 50,
                      color: AppColors.accent,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  movie.title,
                  style: AppTextStyles.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: AppColors.primary,
      selectedItemColor: AppColors.accent,
      unselectedItemColor: AppColors.textSecondary,
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
        switch (index) {
          case 0:
            // Already on home
            break;
          case 1:
            Navigator.pushNamed(context, '/search');
            break;
          case 2:
            Navigator.pushNamed(context, '/favorites');
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: AppStrings.search,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: AppStrings.favorites,
        ),
      ],
    );
  }
}
