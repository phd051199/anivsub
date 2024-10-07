echo moving to the project directory...
cd ..

echo "Downloading dependencies..."
dart pub get

echo "Generating files..."
dart pub run build_runner build --delete-conflicting-outputs

echo "Generating localizations..."
flutter gen-l10n

echo "Done! "