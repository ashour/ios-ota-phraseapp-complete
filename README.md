# A Working Example of an iOS App with PhraseApp Over the Air Translations
This repo and app are companions to a PhraseApp blog article.

## Installation
- [Create a PhraseApp account](https://phraseapp.com/signup)
- [Install the PhraseApp CLI](https://help.phraseapp.com/phraseapp-for-developers/phraseapp-client/installation)
- Ensure that you have [CocoaPods](https://cocoapods.org/) installed.
- From your project root (the directory that contains your `Podfile`), in your terminal, run `$ pod install`
- Rename `PhraseApp.example.plist` to `PhraseApp.plist` and add your distribution ID, dev token, and production token
- (Optional, if you want to `phraseapp push` or `phraseapp pull`) Rename `.phraseapp.example.yml` to `.phraseapp.yml`, and add your access token and project id

That should do it. Happy coding :)
