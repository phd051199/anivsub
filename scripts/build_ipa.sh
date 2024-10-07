#!/bin/bash

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
echo "IPA file created successfully and moved to the /build folder: ../../../../../build/app.tipa"
