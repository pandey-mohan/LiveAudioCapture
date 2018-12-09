# Swift Radio With Live Audio Recording

Swift Radio is an open source radio station app with robust and professional features. This is a fully realized Radio App built entirely in Swift.

There are over 80 different apps accepted to the app store using this code!

<p align="center">
    <img alt="Swift Radio" src="https://fethica.com/img/web/swift-radio.jpg">
</p>

## Video
View this [**GETTING STARTED VIDEO**](https://youtu.be/m7jiajCHFvc).
It's short & sweet to give you a quick overview.  
Give it a quick watch.

## Features

- Download any part of live audio stream you like onto your local file system.
- Ability to update Stations from server or locally. (Update stations anytime without resubmitting to app store!)
- Displays Artist, Track & Album Art on Lock Screen
- Custom views optimized for 5, 6 and 6+ for backwards compatibility
- Compiles with Xcode 9 & Swift 4
- Parses JSON using Swift 4 Codable protocol
- Background audio performance
- Search Bar that can be turned on or off to search stations
- Supports local or hosted station images
- "About" screen with ability to send email & visit website
- Pull to Refresh stations
- Uses the AVPlayer wrapper library [FRadioPlayer](https://github.com/fethica/FRadioPlayer): 
  * Automatically download Album Art from iTunes API
  * Parses metadata from streams (Track & Artist information)
- Uses [Spring](https://github.com/MengTo/Spring) library:
  * Animate UI components
  * Download and cache images using ImageLoader class
  

## Credits
*Created by [Matthew Fecher](http://matthewfecher.com), Twitter: [@goFecher](http://twitter.com/goFecher)*  
*Co-organizer [Fethi El Hassasna](https://fethica.com/en), Twitter: [@fethica](https://twitter.com/fethica)*  
*Thanks to Basel Farag, from [Denver Swift Heads](http://www.meetup.com/Denver-Swift-Heads/) for the code review.*  



## Requirements

- Xcode 9
- Know a little bit of how to program in Swift with the iOS SDK
-Updated for Xcode10


## Creating an App

If you create an app with the code, or interesting project inspired by the code, shoot me an email. I love hearing about your projects!

This is just a basic template. You may use it as a clean starting point to add other features.

Some of the things I've built into this Radio code for clients include: Facebook login, Profiles, Saving Favorite Tracks, Playlists, Genres, Spotify integration, Enhanced Streaming, Tempo Analyzing, etc. There's almost unlimited things you can use this code as a starting place for. I keep this repo lightweight. That way you can customize it easily. 

## Setup

The "SwiftRadio-Settings.swift" file contains some project settings to get you started.
Watch this [Getting Started Video](https://youtu.be/m7jiajCHFvc) to get up & running quickly.

## Integration

Includes full Xcode Project to jumpstart development.

## Stations 

Includes an example "stations.json" file. You may upload the JSON file to a server, so that you can update the stations in the app without resubmitting to the app store. The following fields are supported in the app:

- **name**: The name of the station as you want it displayed (e.g. "Sub Pop Radio")

- **streamURL**: The url of the actual stream

- **imageURL**: Station image url. Station images in demo are 350x206. Image can be local or hosted. Leave out the "http" to use a local image (You can use either: "station-subpop" or "http://myurl.com/images/station-subpop.jpg")

- **desc**: Short 2 or 3 word description of the station as you want it displayed (e.g. "Outlaw Country")

- **longDesc**: Long description of the station to be used on the "info screen". This is optional.

## Contributions

Contributions are very welcome. Please check out the [dev branch](https://github.com/analogcode/Swift-Radio-Pro/tree/dev), create a separate branch (e.g. features/3dtouch). Please do not commit on master.

## FAQ

Q: Do I have to pay you anything if I make an app with this code?  
A: Nope. This is completely open source, you can do whatever you want with it. It's usually cool to thank the project if you use the code. Go build stuff. Enjoy.

Q: How do I make my app support ipv6 networks?  
A: For an app to be accepted by Apple to the app store as of June 1, 2016, you CAN NOT use number IP addresses. i.e. You must use something like "http://mystream.com/rock" instead of "http://44.120.33.55/" for your station stream URLs.

Q: Is there an example of using this with the Spotify API?  
A: Yes, there is a branch here that uses it [here]( https://github.com/swiftcodex/Swift-Radio-Pro/tree/avplayer) (⚠️ **deprecated**).

Q: Is there another API to get album/track information besides LastFM, Spotify, and iTunes?  
A: Rovi has a pretty sweet [music API](http://prod-doc.rovicorp.com/mashery/index.php/Data/APIs/Rovi-Music). The [Echo Nest](http://developer.echonest.com/) has all kinds of APIs that are fun to play with. 

Q: I updated the album art size in the Storyboard, and now the sizing is acting funny?  
A: There is an albumArt constraint modified in the code. See the "optimizeForDeviceSize()" method in the NowPlayingVC.

Q: My radio station isn't playing?  
A: Paste your stream URL into a browser to see if it will play there. The stream may be offline or have a weak connection.

Q: Can you help me add a feature? Can you help me understand the code? Can you help with a problem I'm having?  
A: While I have a full-time job and other project obligations, I'd highly recommend you find a developer or mentor in your area to help. The code is well-documented and most developers should be able to help you rather quickly. While I am sometimes available for paid freelance work, see below in the readme, **I am not able to provide any free support or modifications.** Thank you for understanding!

Q: The song names aren't appearing for my station?  
A: Check with your stream provider to make sure they are sending Metadata properly. If a station sends data in a unique way, you can modify the way the app parses the metadata, in the `RadioPlayer` class implement `FRadioPlayerDelegate` method: `radioPlayer(_ player: FRadioPlayer, metadataDidChange rawValue: String?)`.

## Single Station Code
We can create a single station version of this code for you for a small fee. Send a friendly email to [Matthew](mailto:matthew@audiokitpro.com) or [Fethi](https://fethica.com/en).  

## RadioKit SDK Example 

![alt text](http://matthewfecher.com/wp-content/uploads/2015/11/radiokit.jpg "RadioKit Example")

- You can use this Swift code as a front-end for a more robust streaming backend.
- Brian Stormont, creator of RadioKit, has created a branch with the professional [RadioKit](http://stormyprods.com/products/radiokit.php) SDK already integrated. **Plus, his branch adds rewind & fast forward stream playback.** This is an excellent learning tool for those who are interested in seeing how a streaming library integrates with Swift Radio Pro. View the [branch here](https://github.com/MostTornBrain/Swift-Radio-Pro/tree/RadioKit).

## Custom Work & Consulting

We have recent experience building iOS apps for both independent and high-profile clients (brand names and apps we can't discuss here, but, you would instantly recognize!) Additionally, we've built advanced versions of this radio code for amazing independent clients.

[Get in Touch](http://matthewfecher.com/contact/) to see what I can do for you!
