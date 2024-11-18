# AniVSub

A modern Flutter application for anime streaming, offering a seamless viewing experience with advanced features.

## Features

- 🎯 Cross-platform support (iOS & Android)
- 🎨 Modern and intuitive UI (MD3)
- 🔍 Advanced search and filtering
- 🎬 High-quality video playback
- ⏭️ Auto-skip intro and outro segments
- 💫 Smooth animations and transitions

## Screenshots

<table>
   <tr>
      <td>
         <img width="250px" src="screenshots/simulator_screenshot_9AC9505F-1921-4927-A2AF-C5EE634D312D.png">
      </td>
      <td>
         <img width="250px" src="screenshots/simulator_screenshot_339899C9-BD3D-4338-AD73-7EBB275164E8.png">
      </td>
      <td>
         <img width="250px" src="screenshots/simulator_screenshot_6C13C370-2796-4789-B256-44912AA76733.png">
      </td>
   </tr>
   <tr>
      <td>
         <img width="250px" src="screenshots/simulator_screenshot_2B8C8E5E-F6B4-4E39-91A1-192269F17043.png">
      </td>
      <td>
         <img width="250px" src="screenshots/simulator_screenshot_362D1B89-2239-4CAE-AC74-8431A2060463.png">
      </td>
      <td>
         <img width="250px" src="screenshots/simulator_screenshot_AE0A6C47-9CB9-428E-86C1-02FFB4105457.png">
      </td>
   </tr>
</table>

## Getting Started

### Prerequisites

- Flutter SDK (>=3.24.4)
- Dart SDK (>=3.5.3)
- Android Studio / Xcode (for mobile development)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/phd051199/anivsub.git
   cd anivsub
   ```

2. Run the initial setup script:

   ```bash
   cd tools
   ./first_boot_init.sh
   ```

3. Create a `.env` file in the root directory with the required environment variables:
   ```env
   HOST_CURL=
   SUPABASE_URL=
   SUPABASE_ANON_KEY=
   ```

### Building

To build the application, use the provided build script:

```bash
cd tools
./build_app.sh
```

## Architecture

This project follows clean architecture principles and uses:

- `bloc` for state management
- `get_it` and `injectable` for dependency injection
- `go_router` for navigation
- `dio` for networking
- `freezed` for data classes
- `retrofit` for API integration

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).

## Acknowledgments

- [river_player](https://pub.dev/packages/river_player), [video_player](https://pub.dev/packages/video_player) for video playback
- [flutter_bloc](https://pub.dev/packages/flutter_bloc) for state management
- All other open-source packages that made this project possible
