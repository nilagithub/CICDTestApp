#!/bin/bash
set -e
# Required: ANDROID_APP_ID and FIREBASE_TOKEN must be passed in via environment variables
echo "📤 Uploading APK to Firebase App Distribution..."
firebase appdistribution:distribute android/app/build/outputs/apk/release/app-release.apk \
  --app "$ANDROID_APP_ID" \
  --token "$FIREBASE_TOKEN" \
  --release-notes "Automated build from GitHub Actions" \
  --groups testers
echo "✅ Upload complete."
