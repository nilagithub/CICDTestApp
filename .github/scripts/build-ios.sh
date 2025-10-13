#!/bin/bash
set -e  # Exit on any error

cd ios
pod install

xcodebuild \
  -workspace CICDTestApp.xcworkspace \
  -scheme CICDTestApp \
  -sdk iphonesimulator \
  -configuration Debug \
  -derivedDataPath build
