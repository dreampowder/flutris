#!/bin/bash
# Check if a directory path is provided as an argument
echo "Running code generators"
dart run build_runner build --delete-conflicting-outputs

