# AddToSiri

A SwiftUI wrapper around the `Add to Siri` button used to donate INIntents to the system. 

Originally created by Reddit user [u/dippnerd](https://www.reddit.com/user/dippnerd)

## Installation

AddToSiri can be installed via Swift Package Manager - just copy over the Github URL:
`https://github.com/chFlorian/AddToSiri`

## Usage

```swift
import AddToSiri
```

```swift
var body: some View {
    DonateButton(intent: MyCustomIntentName())
}
```
