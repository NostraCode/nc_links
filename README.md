# FE Master Project

TO DO list for new project:

## 1. create launch.json file for "run and debug" configuration<br/>

create launch.json file for "run and debug" configuration<br/>
add dev, stage, prod configuration<br/>

## 2. rename project and bundleID

https://pub.dev/packages/rename<br/>
don't use underscore. it will give an error, use '-' instead of '\_'<br/>
-> dart pub global activate rename<br/>
-> dart pub global run rename --bundleId com.nostracode.fe_master --target android<br/>
-> dart pub global run rename --bundleId com.nostracode.fe-master --target ios<br/>
-> dart pub global run rename --bundleId com.nostracode.fe-master --target macOS<br/>
-> dart pub global run rename --appname "FE Master"<br/>

## 3. connect to firebase<br/>

add new project at firebase before run below commands<br/>
for first config we don't need "google-services.json" anymore<br/>
<br/>
-> firebase use --add &nbsp; &nbsp; => (to update default project value)<br/>
-> flutter pub add firebase_core &nbsp; &nbsp; => (if needed)<br/>
-> dart pub global activate flutterfire_cli<br/>
-> flutterfire configure<br/>

## 4. add fingerprint to firebase (android)<br/>

generate sha1 & sha256 before download google-services.json file<br/>
on mac run this command on terminal<br/>
-> keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android<br/>

## 5. google-services.json (android)<br/>

add fingerprint sha1 on project settings (android)<br/>
download google-services.json, put it on folder_project/android/app<br/>

## 6. fixing on configuration platform files (android)<br/>

[update values on android/app/build.gradle]<br/>
compileSdkVersion=33<br/>
minSdkVersion=22<br/>
targetSdkVersion=33<br/>
<br/>
[Add these lines on android/app/build.gradle]<br/>
multiDexEnabled true<br/>

## 7. configure hosting (web)<br/>

-> firebase init &nbsp; &nbsp; => (will generate .firebaserc & firebase.json)<br/>
-> firebase target:apply hosting targetName projectID &nbsp; &nbsp; => (for multiple hosting, after update firebase.json )<br/>
-> firebase build web<br/>
-> firebase deploy --only hosting<br/>

## 8. xcode build taking long time (ios)<br/>

-> flutter precache --ios<br/>
[go to the iOS folder]<br/>
-> pod install<br/>

## 9. fixing on configuration platform files (ios & macos)<br/>

via Xcode:<br/>
set iOS development target to 11.0<br/>
set macOS development target to 11.0<br/>
activate Capabilities => Outgoing Connections<br/>

update Podfile to:<br/>
platform :ios, '11.0'<br/>
platform :osx, '11.0'<br/>

<!-- on "ios" folder find and replace '9.0' to '10.0'<br/> -->
<!-- on "macos" folder find and replace '10.11' to '11.0'<br/> -->

<!-- * finally...don't forget to backup the project to github -->
