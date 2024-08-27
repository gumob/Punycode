[![Swift Package Manager compatible](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange)](https://github.com/gumob/PunycodeSwift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg)](https://github.com/gumob/PunycodeSwift)
[![Cocoapods Version](https://img.shields.io/cocoapods/v/Punycode.svg)](https://cocoapods.org/pods/Punycode)
[![Cocoapods Platform](https://img.shields.io/cocoapods/p/Punycode.svg)](https://cocoadocs.org/docsets/Punycode)
[![Build](https://github.com/gumob/PunycodeSwift/actions/workflows/main.yml/badge.svg)](https://github.com/gumob/PunycodeSwift/actions/workflows/main.yml)
[![codecov](https://codecov.io/gh/gumob/PunycodeSwift/branch/master/graph/badge.svg)](https://codecov.io/gh/gumob/PunycodeSwift)
![Language](https://img.shields.io/badge/Language-Swift%205.0-orange.svg)
![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)

# PunycodeSwift

<code>PunycodeSwift</code> is a pure Swift library to allows you to encode and decode `punycoded` strings by using String extension.

## What is Punycode?

Punycode is a representation of Unicode with the limited ASCII character subset used for Internet host names. Using Punycode, host names containing Unicode characters are transcoded to a subset of ASCII consisting of letters, digits, and hyphen, which is called the Letter-Digit-Hyphen (LDH) subset. For example, München (German name for Munich) is encoded as Mnchen-3ya. [(Wikipedia)](https://en.wikipedia.org/wiki/Punycode)

## Requirements
- macOS 10.13 or later
- iOS 12.0 or later
- tvOS 12.0 or later
- watchOS 4.0 or later
- visionOS 1.0 or later
- Swift 5.0 or later

## Installation

### Swift Package Manager

Add the following to your `Package.swift` file.

- macOS, iOS, tvOS, watchOS, visionOS, and Swift 5
    ```swift
    dependencies: [
        .package(url: "https://github.com/gumob/PunycodeSwift.git", .upToNextMajor(from: "3.0.0"))
    ]
    ```

- macOS, iOS, tvOS, and Swift 5
    ```swift
    dependencies: [
        .package(url: "https://github.com/gumob/PunycodeSwift.git", .upToNextMajor(from: "2.1.1"))
    ]
    ```

### Carthage

Add the following to your `Cartfile` and follow [these instructions](https://github.com/Carthage/Carthage#adding-frameworks-to-an-application).

- macOS, iOS, tvOS, watchOS, visionOS, and Swift 5

    ```
    github "gumob/PunycodeSwift" ~> 3.0
    ```

- macOS, iOS, tvOS, and Swift 5

    ```
    github "gumob/PunycodeSwift" ~> 2.0
    ```

- macOS, iOS, tvOS, and Swift 4

    ```
    github "gumob/PunycodeSwift" ~> 1.0
    ```

### CocoaPods

To integrate TLDExtract into your project, add the following to your `Podfile`.

- macOS, iOS, tvOS, watchOS, visionOS, and Swift 5.0

    ```ruby
    pod 'Punycode', '~> 3.0'
    ```

- macOS, iOS, tvOS, and Swift 5.0

    ```ruby
    pod 'Punycode', '~> 2.0'
    ```

- macOS, iOS, tvOS, and Swift 4.2

    ```ruby
    pod 'Punycode', '~> 1.0'
    ```

## Usage

Encode and decode IDNA:

```swift
import Punycode

var sushi: String = "寿司"

sushi = sushi.idnaEncoded!
print(sushi)  // xn--sprr0q

sushi = sushi.idnaDecoded!
print(sushi)  // "寿司"
```

Encode and decode Punycode directly:

```swift
import Punycode

var sushi: String = "寿司"

sushi = sushi.punycodeEncoded!
print(sushi)  // sprr0q

sushi = sushi.punycodeDecoded!
print(sushi)  // "寿司"
```

## Copyright

Punycode is released under MIT license, which means you can modify it, redistribute it or use it however you like.
