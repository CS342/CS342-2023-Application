<!--

This source file is part of the CS342 2023 Application project

SPDX-FileCopyrightText: 2023 Stanford University

SPDX-License-Identifier: MIT

-->

#  CS342 2023 Application

This repository contains the CS342 2023 Application. It serves as a template repository for projects requiering a mobile application using a continous integration and continous delivery setup.

## Structure

The application is based on a Swift Package Manager-based modularized structure to separate the implementation of each SwiftUI view.

Each member should create a new Swift Package taget in the `CS342MemberViews` Swift Package. You can learn more about Swift Packages at [developer.apple.com/documentation/xcode/swift-packages](https://developer.apple.com/documentation/xcode/swift-packages).

The main application target contains the `Role` and `Member` model types that define the members of the class.
The `MemberList` contains the list and `NavigationStack` to power the SwiftUI-based appliaction. Subviews can modify the `NavigationPath` that can be passed in as a `Binding<NavigationPath>` to add additional subviews or control the navigation path.

Extend the `Member` enumeration with an additional case and add a new view to the `Member+Views.swift` extension to add an additional member to the application.

## Continous Delivery Workflows

### Beta Deployment

The Beta Deployment workflow is triggered when a new commit is added to the main branch. 

It first runs the Build and Test workflow to ensure all tests are passing.
Once the Build and Test workflow passes, it builds the iOS application so it can be archived and sent to [TestFlight](https://developer.apple.com/testflight/) for internal beta deployment.

### Build and Test

The Build and Test workflow builds and tests the iOS application, shared Swift package, and web service. It runs all unit and user interface (UI) tests defined in the targets. The iOS application is tested on the iOS simulator on macOS. The shared and web service Swift packages are tested on Linux and macOS as well as in release and debug configuration to demonstrate all possible variations. 

### SwiftLint

The Swiftlint workflow is triggered by every pull request (PR) and checks if the files found in the diff contain any [SwiftLint](https://github.com/realm/SwiftLint) violations.
You can change the SwiftLint configuration in the `.swiftlint.yml` file found at the root of this repository.

## Continous Delivery Setup

It is a prerequiesite to have access to a Apple Developer Account that allows [TestFlight](https://developer.apple.com/testflight/) releases and create a app in [App Store Connect](https://appstoreconnect.apple.com) that matches the bundle identifier you have defined in the App project.

### Contributors

This project is based on [ContinousDelivery Example by Paul Schmiedmayer](https://github.com/PSchmiedmayer/ContinousDelivery). You can find a list of contributors in the `CONTRIBUTORS.md` file.
