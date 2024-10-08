#!/bin/bash

# Function to build IPA file
build_ipa() {
    # Build the Flutter app without code signing
    flutter build ipa --no-codesign

    # Navigate to the output directory
    cd ../build/ios/archive/Runner.xcarchive/Products || { echo "Failed to navigate to the output directory"; exit 1; }

    # Rename the 'Applications' folder to 'Payload'
    mv -f Applications Payload

    # Zip the Payload folder into a .zip file
    zip -r Payload.zip Payload

    # Rename the .zip file to .ipa
    mv -f Payload.zip app.tipa

    # Create the build directory if it doesn't exist
    mkdir -p ../../../../../build

    # Move the IPA file to the /build folder
    mv -f app.tipa ../../../../../build/app.tipa

    # Output completion message
    echo "IPA file created successfully and moved to the /build folder: build/app.tipa"
}

# Function to build APK file
build_apk() {
    # Build the Flutter APK file
    flutter build apk

    # Navigate to the output directory
    cd ../build/app/outputs/flutter-apk || { echo "Failed to navigate to the APK output directory"; exit 1; }

    # Move the APK file to the /build folder
    mkdir -p ../../../build
    mv -f app-release.apk ../../../build/app-release.apk

    # Output completion message
    echo "APK file created successfully and moved to the /build folder: build/app-release.apk"
}

# Ask user which build they want
echo "Which file would you like to build?"
echo "1) IPA"
echo "2) APK"
echo "3) Both"
read -p "Enter your choice (1/2/3): " choice

case $choice in
    1)
        build_ipa
        ;;
    2)
        build_apk
        ;;
    3)
        build_ipa
        build_apk
        ;;
    *)
        echo "Invalid option"
        exit 1
        ;;
esac
