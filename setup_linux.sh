#!/bin/bash
set -e  # stop on error

cd packages/common_sdk
flutter pub get
cd ..

cd isar_e2m
flutter pub get
cd ..

cd json_client
flutter pub get
cd ..

cd core_sdk
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter pub get
cd ..

cd core_sdk_impl
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter pub get
cd ..
cd ..

flutter pub run build_runner build --delete-conflicting-outputs
flutter pub get
