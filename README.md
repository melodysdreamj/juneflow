---
description: >-
  If this is your first project with your computer, you need to have all the
  utilities listed below installed.
---

# Essential Utilities Installation Guide On Mac

## homebrew

Open the terminal and enter the following. You can find detailed installation instructions [here](https://brew.sh/).

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

***

## git

Open the terminal and enter the following. You can find detailed installation instructions [here](https://git-scm.com/).

```bash
brew install git
```

***

## firebase cli

You can find detailed installation instructions [here](https://docs.flutter.dev/get-started/install).

***

## firebase cli

Open the terminal and enter the following.

```bash
curl -sL https://firebase.tools | upgrade=true bash
firebase login
```

***

## flutterfire\_cli

Open the terminal and enter the following.

```bash
dart pub global activate flutterfire_cli
```

***

## fastlane

Open the terminal and enter the following.

```
xcode-select --install 
brew install fastlane
```

***

## nodejs

You can find detailed installation instructions [here](https://nodejs.org/en).

***

## android Studio

You can find detailed installation instructions [here](https://developer.android.com/studio).

After installation android Studio, add the following emulator. At this time, set it to cold start, allocate more than 4GB of RAM, and provide ample storage space of more than 10GB.

* DeviceManager → Create Device → New Hardware Profile
  1. Samsung Galaxy S10 → `3040 x 1440`
  2. nexus\_9 → `2048 x 1536`
  3. Nexus\_5X → `1920 x 1080`

***

## xcode

You can find detailed installation instructions [here](https://developer.apple.com/xcode/).

After installation, add the following simulator.

1. xcode → Help → Device and Simulator
   1. iPhone 8 Plus → os version → Download more simulator runtime.. → ios 16 download
   2. iPhone 15 Pro Max
   3. iPad Pro (12.9-inch) (6th generation)

***

## java

To obtain the SHA1/SHA256 values, you must first have Java installed.

1. Download and install the Java machine from the following [link](https://www.oracle.com/java/technologies/downloads/#jdk17-mac) on Oracle's website.

***

## other

Open the terminal and enter the following.

To authorize a test drive later, proceed with the following installation.

```bash
arch -arm64 brew tap wix/brew
arch -arm64 brew install applesimutils
```



2. For asset generation, enter the following:

```bash
arch -arm64 brew install FlutterGen/tap/fluttergen
dart pub global activate flutter_gen
```

