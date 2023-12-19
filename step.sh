#!/bin/bash
# set -ex
echo -e "\033[33mThis step is for use with Firebase Crashlytics that has been installed by SPM.\033[0m"
echo ""

if [ ! -e "$google_plist_path" ]; then
  echo -e "\033[33mPlease provide the location of your GoogleService-Info.plist\033[0m"
  echo ""
  exit 1
fi

THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

$THIS_SCRIPT_DIR/upload-symbols -gsp "${google_plist_path}" -p ios "$dsym_location"