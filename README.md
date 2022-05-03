# fe_master

FE Master Project

**[ TO DO list for new project ]**

# 1. rename project and bundleID
  https://pub.dev/packages/rename
  don't use underscore will give error, use '-' instead of '_'
  -> dart pub global activate rename
  -> dart pub global run rename --bundleId com.nostracode.fe_master --target android
  -> dart pub global run rename --bundleId com.nostracode.fe-master --target ios
  -> dart pub global run rename --bundleId com.nostracode.fe-master --target macOS
  -> dart pub global run rename --appname "FE Master"

# 2. connect to firebase
  add new project at firebase before run below commands
  for first config we don't need "google-services.json" anymore
  -> flutter pub add firebase_core => (if needed)
  -> dart pub global activate flutterfire_cli
  -> flutterfire configure

# 3. add fingerprint to firebase  (android)
  generate sha1 & sha256 before download google-services.json file
  on mac run this command on terminal
  -> keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android

# 3. google-services.json (android)
  add fingerprint sha1 on project settings (android)
  download google-services.json put it at folder_project/android/app

# 4. fixing on configuration platform files  (ios)
  on "ios" folder find and replace '9.0' to '10.0'
  on "macos" folder find and replace '10.11' to '10.15'

# 5. configure hosting  (web)
  -> firebase init
  will generate .firebaserc & firebase.json
  update firebase.json for multiple hosting
  -> firebase build web
  -> firebase deploy --only hosting

# 6. create launch.json file for "run and debug" configuration
  create launch.json file for "run and debug" configuration
  add dev,stage,prod configuration

# 7. fixing on configuration platform files  (android)
  (*Add these lines on android/build.gradle*)
  <!-- classpath 'com.google.gms:google-services:4.3.10' -->

  (*Add these lines on android/app/build.gradle*)
  compileSdkVersion localProperties.getProperty('flutter.compileSdkVersion').toInteger()    
  minSdkVersion localProperties.getProperty('flutter.minSdkVersion').toInteger()            
  targetSdkVersion localProperties.getProperty('flutter.targetSdkVersion').toInteger()      
  versionCode localProperties.getProperty('flutter.versionCode').toInteger()
  <!-- multiDexEnabled true                                   -->
  <!-- apply plugin: 'com.google.gms.google-services'         -->

  (*add these lines on local.properties*)
  flutter.compileSdkVersion=31                          
  flutter.minSdkVersion=21                              
  flutter.targetSdkVersion=31                      
