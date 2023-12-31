# Semaphr

[Semaphr](https://semaphr.com) is an all-in-one kill switch for your mobile apps. With Semaphr, you can force users to update to the latest version of your mobile apps, encourage app updates, or alert them of any issues with the app.
<br />
<br />

## What does it do?

- Forcing updates: Keep your users up to date with the latest features, security, and bug fixes.
- Encouraging updates: Engage and inform users about exciting improvements to your app.
- Alert system: Proactively communicate if any app parts aren't working as expected.
- App blocking: Take charge by temporarily blocking users, perfect for maintenance or critical issues.
<br />
<br />

## How to use it?

- To get started, visit [our website](https://semaphr.com) and register an account.
- Create a new app.
- Go to **Settings -> Integrations** add the details for your app and follow the instructions.

<br />

### SPM integration

To integrate the SDK using SPM, add the latest version of the iOS SDK by copy-pasting the repo link [https://github.com/semaphr/iOS](https://github.com/semaphr/iOS) in the package search field in Xcode, and adding the module.

<br />

### COCOAPODS integration

To integrate the SDK using COCOCAPODS, add the pod to your Podfile
```
pod 'Semaphr'
```
<br />

### Usage in the app

To use the SDK, you simply have to add your API key. 

The API key can be found on [our website](https://semaphr.com) in the  **Settings -> Integrations** section. Click **Copy to Clipboard** and paste it into the code, where you initialize the SDK.

A good place to add the initialization code is in the AppDelegate as follows:

```
import UIKit
import Semaphr

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

    // Configure the semaphr SDK
    Semaphr.configure(APIKey: API_KEY)

    // Other configs you have in your app...
     
    return true
  }
}
```
<br />

### Adding your first message

```diff
- Once the SDK is added, it's important to lunch the app, so that the current version of the app can be inferred by our systems.
```

After an initial startup, you can go to **Messages** and add a new message, once it's published, the message will be displayed every time the app is **brought to the foreground** by your users.

<br />
<br />

## Examples

You can find examples of how to integrate the codebase using [SPM here](https://github.com/semaphr/ios-examples/tree/main/SPM/SemaphrExample) and [COCOAPODS here](https://github.com/semaphr/ios-examples/tree/main/COCOAPODS/SemaphrExample).

<br />
<br />

## Disable the SDK

Should you wish to disable the SDK for any reason, you can simply call the following method:

```
    Semaphr.disable()
```

<br />
<br />

## FAQs

<br />

### How do I support multiple environments on the SDK?

You can support multiple environments by creating multiple apps and using separate API keys for each environment.

<br />

### Are the messages displayed instantly?

The messages are only displayed if the user brings the app to the foreground, otherwise, they can continue to use it. This is by design, as otherwise, the SDK will have to query the status periodically. **This functionality is only offered with our enterprise plans.**

<br />

### I need a new functionality...

If you have any suggestions, or you're looking for a feature that's not available out of the box, write us an email at [info@semaphr.com](mailto:info@semaphr.com).

<br />
<br />
Copyright Semaphr.
