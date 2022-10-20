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


## How build web to github pages use

To compile
```
  fvm flutter build web --web-renderer html --release --base-href "/portfolio/"
```

To update /docs directory
```
  mv build/web/* docs
```

## Test locally using Python3

run build/web directory
```
  python3 -m http.server --directory docs
```

run docs directory
```
  python3 -m http.server --directory docs
```
