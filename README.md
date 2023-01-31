# bin_protfolio

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## How build web to github pages using docs

To compile
```
  fvm flutter build web --release --web-renderer html --base-href "/portfolio/"
```

To update /docs directory
```
  cp -R ./build/web/* ./docs/
```

To update /assets to /docs directory
```
  cp -R ./assets/* ./docs/assets/assets
```

## Test locally using Python3

run build/web directory
```
  python3 -m http.server --directory ./build/web
```

run docs directory
```
  python3 -m http.server --directory docs
```
