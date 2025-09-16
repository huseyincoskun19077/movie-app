# Movie App

A modern Flutter movie application that allows users to browse, search, and discover movies.

## Features

- Browse popular, top-rated, and upcoming movies
- Search for movies
- View detailed movie information
- Add movies to favorites
- Modern dark theme UI
- Clean architecture with feature-first approach

## Getting Started

### Prerequisites

- Flutter SDK (3.7.2 or higher)
- Dart SDK
- Android Studio / VS Code

### Installation

1. Clone the repository
```bash
git clone <repository-url>
cd nodelabsmovieapp
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## Project Structure

```
lib/
├── core/
│   ├── constants/       # App constants (colors, strings, text styles)
│   ├── models/         # Data models
│   ├── routes/         # App routing
│   └── widgets/        # Shared widgets
├── features/
│   ├── splash/         # Splash screen
│   ├── home/           # Home screen with movie lists
│   ├── search/         # Movie search functionality
│   ├── favorites/      # Favorite movies
│   └── movie_detail/   # Movie detail screen
└── main.dart
```

## Architecture

This project follows a feature-first architecture approach:

- **Features**: Each feature has its own folder with views and widgets
- **Core**: Shared resources like constants, models, and utilities
- **Clean Separation**: Clear separation between UI and business logic

## Contributing

1. Fork the project
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request
