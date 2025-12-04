#!/bin/bash

# flutter build apk --flavor development --release --split-per-abi
# flutter build apk --flavor production --release --split-per-abi

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to extract values from pubspec.yaml
get_pubspec_value() {
    local key="$1"
    grep "$key:" pubspec.yaml | awk '{print $2}' | tr -d '"' | tr -d "'"
}

# Get version info from pubspec.yaml
VERSION_NAME=$(get_pubspec_value "version")
VERSION_CODE=$(echo $VERSION_NAME | awk -F'+' '{print $2}')
VERSION_NAME=$(echo $VERSION_NAME | awk -F'+' '{print $1}')

echo -e "${BLUE}📦 Flutter Build Automation Script${NC}"
echo -e "${YELLOW}Version Name: $VERSION_NAME${NC}"
echo -e "${YELLOW}Version Code: $VERSION_CODE${NC}"

# Function to clean old builds
clean_old_builds() {
    local flavor="$1"
    local extension="$2"
    
    echo -e "${YELLOW}🧹 Cleaning old $flavor $extension files...${NC}"
    find build/app/outputs -name "clean_starter_v*_${flavor}.${extension}" -exec rm -v {} \;
}

# Function to rename build file
rename_build_file() {
    local original_path="$1"
    local flavor="$2"
    local extension="$3"
    
    if [ -f "$original_path" ]; then
        # Get directory and original filename
        local dir_path=$(dirname "$original_path")
        local new_filename="clean_starter_v${VERSION_NAME}_${VERSION_CODE}_${flavor}.${extension}"
        
        # Rename the file
        mv -v "$original_path" "$dir_path/$new_filename"
        echo -e "${GREEN}✅ Successfully renamed to: $dir_path/$new_filename${NC}"
    else
        echo -e "${RED}❌ Error: Original file not found at $original_path${NC}"
    fi
}

# Function to build APK
build_apk() {
    local flavor="$1"
    local is_dev="$2"
    
    echo -e "${BLUE}🔨 Building $flavor APK...${NC}"
    
    clean_old_builds "$flavor" "apk"
    
    if [ "$is_dev" = true ]; then
        flutter build apk -t "lib/mode/dev/env_dev.dart" --flavor "$flavor" --release
    else
        flutter build apk --flavor "$flavor" --release
    fi
    
    # Path might vary based on Flutter version, adjust if needed
    local original_apk_path="build/app/outputs/flutter-apk/app-${flavor}-release.apk"
    rename_build_file "$original_apk_path" "$flavor" "apk"
}

# Function to build App Bundle
build_appbundle() {
    local flavor="$1"
    
    echo -e "${BLUE}🔨 Building $flavor App Bundle...${NC}"
    
    clean_old_builds "$flavor" "aab"
    
    flutter build appbundle --flavor "$flavor" --release
    
    # Path might vary based on Flutter version, adjust if needed
    local original_bundle_path="build/app/outputs/bundle/${flavor}Release/app-${flavor}-release.aab"
    rename_build_file "$original_bundle_path" "$flavor" "aab"
}

# Main menu
echo -e "${BLUE}Select build type:${NC}"
echo -e "1) Development APK"
echo -e "2) Release APK"
echo -e "3) Release App Bundle"
echo -e "4) All (Dev APK + Release APK + App Bundle)"
echo -e -n "${YELLOW}Your choice (1-4): ${NC}"
read choice

case $choice in
    1)
        build_apk "development" true
        ;;
    2)
        build_apk "production" false
        ;;
    3)
        build_appbundle "production"
        ;;
    4)
        build_apk "development" true
        build_apk "production" false
        build_appbundle "production"
        ;;
    *)
        echo -e "${RED}❌ Invalid choice!${NC}"
        exit 1
        ;;
esac

echo -e "${GREEN}🎉 Build process completed!${NC}"