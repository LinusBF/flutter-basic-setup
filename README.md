# flutter_basic

A boilerplate project that provides a Scaffold (ha!) for how I like structuring Flutter apps

## Moving to your own app name and such
Switching Bundle IDs and App Names can be a pain, thankfully there is a tool for that:
[rename](https://pub.dev/packages/rename)
`flutter pub global activate rename`
### Switching Bundle ID
`pub global run rename --bundleId com.example.yourID`
### Switching App Name
`flutter pub global run rename --appname "Your App Name"`

## Custom icon
I usually use this tool for setting the icon, but I am looking for one with better support for Android adaptive icons
`flutter pub run flutter_launcher_icons:main`
