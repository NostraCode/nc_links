# FE Master Project

TO DO list for new project:

## 1. rename project and bundleID

https://pub.dev/packages/rename<br/>
don't use underscore will give error, use '-' instead of '\_'<br/>
-> dart pub global activate rename<br/>
-> dart pub global run rename --bundleId com.nostracode.fe_master --target android<br/>
-> dart pub global run rename --bundleId com.nostracode.fe-master --target ios<br/>
-> dart pub global run rename --bundleId com.nostracode.fe-master --target macOS<br/>
-> dart pub global run rename --appname "FE Master"<br/>

## 2. connect to firebase<br/>

add new project at firebase before run below commands<br/>
for first config we don't need "google-services.json" anymore<br/>
<br/>
-> firebase use --add => (to update default project value)<br/>
-> flutter pub add firebase_core => (if needed)<br/>
-> dart pub global activate flutterfire_cli<br/>
-> flutterfire configure<br/>

## 3. add fingerprint to firebase (android)<br/>

generate sha1 & sha256 before download google-services.json file<br/>
on mac run this command on terminal<br/>
-> keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android<br/>

## 4. google-services.json (android)<br/>

add fingerprint sha1 on project settings (android)<br/>
download google-services.json, put it on folder_project/android/app<br/>

## 5. fixing on configuration platform files (ios)<br/>

on "ios" folder find and replace '9.0' to '10.0'<br/>
on "macos" folder find and replace '10.11' to '10.15'<br/>

## 6. configure hosting (web)<br/>

-> firebase init => (will generate .firebaserc & firebase.json)<br/>
-> firebase target:apply hosting targetName projectID => (for multiple hosting, after update firebase.json )<br/>
-> firebase build web<br/>
-> firebase deploy --only hosting<br/>

## 7. create launch.json file for "run and debug" configuration<br/>

create launch.json file for "run and debug" configuration<br/>
add dev, stage, prod configuration<br/>

## 8. fixing on configuration platform files (android)<br/>

[Add these lines on android/build.gradle]<br/>
classpath 'com.google.gms:google-services:4.3.10'<br/>
<br/>
[Add these lines on android/app/build.gradle]<br/>
multiDexEnabled true<br/>
apply plugin: 'com.google.gms.google-services'<br/>
compileSdkVersion localProperties.getProperty('flutter.compileSdkVersion').toInteger()<br/>
minSdkVersion localProperties.getProperty('flutter.minSdkVersion').toInteger()<br/>
targetSdkVersion localProperties.getProperty('flutter.targetSdkVersion').toInteger()<br/>
versionCode localProperties.getProperty('flutter.versionCode').toInteger()<br/>
<br/>
[add these lines on local.properties]<br/>
flutter.compileSdkVersion=31<br/>
flutter.minSdkVersion=21<br/>
flutter.targetSdkVersion=31<br/>
