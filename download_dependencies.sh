#!/bin/bash
set -e

mkdir -p dependencies/download

# Core Dependencies
curl -L -o dependencies/asm-4.2.jar https://repo1.maven.org/maven2/org/ow2/asm/asm-debug-all/4.2/asm-debug-all-4.2.jar
curl -L -o dependencies/junit-4.11.jar https://repo1.maven.org/maven2/junit/junit/4.11/junit-4.11.jar
curl -L -o dependencies/hamcrest-all-1.3.jar https://repo1.maven.org/maven2/org/hamcrest/hamcrest-all/1.3/hamcrest-all-1.3.jar
curl -L -o dependencies/json-20080701.jar https://repo1.maven.org/maven2/org/json/json/20080701/json-20080701.jar
curl -L -o dependencies/ant-contrib.jar https://repo1.maven.org/maven2/ant-contrib/ant-contrib/1.0b3/ant-contrib-1.0b3.jar
curl -L -o dependencies/jarjar.jar https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/jarjar/jarjar-1.4.jar
curl -L -o dependencies/proguard.jar https://repo1.maven.org/maven2/net/sf/proguard/proguard-base/5.1/proguard-base-5.1.jar

# Android SDK 15
wget https://dl.google.com/android/repository/android-15_r05.zip
unzip -j android-15_r05.zip "android-4.0.4/android.jar" -d dependencies/
rm android-15_r05.zip
