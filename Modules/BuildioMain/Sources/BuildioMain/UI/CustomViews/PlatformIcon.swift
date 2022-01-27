//
//  PlatformIcon.swift
//  Buildio (iOS)
//
//  Created by Sergey Khliustin on 05.11.2021.
//

import SwiftUI

enum Platform: String, CaseIterable {
    case ios
    case macos
    case xamarin
    case android
    case cordova
    case ionic
    case react = "react-native"
    case flutter
    case fastlane
    case nodejs = "node-js"
    case go
    case other
}

struct PlatformIcon: View {
    @Environment(\.theme) private var theme

    private static let icons: [Platform: String] = [
        .ios: "PlatformApple",
        .macos: "PlatformMacos",
        .xamarin: "PlatformXamarin",
        .android: "PlatformAndroid",
        .cordova: "PlatformCordova",
        .ionic: "PlatformIonic",
        .react: "PlatformReact",
        .flutter: "PlatformFlutter",
        .fastlane: "PlatformFastlane",
        .nodejs: "PlatformNodejs",
        .go: "PlatformGo",
        .other: "PlatformOther"
    ]

    private static let defaultIcon = "PlatformOther"
    
    private let iconName: String
    
    init(platform: Platform) {
        self.init(platform.rawValue)
    }
    
    init(_ platformString: String?) {
        if let platformString = platformString,
           let platform = Platform(rawValue: platformString),
           let iconName = Self.icons[platform] {
            self.iconName = iconName
        } else {
            self.iconName = Self.defaultIcon
        }
    }
    var body: some View {
        Image(iconName)
            .renderingMode(.template)
    }
}

struct PlatformIcon_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            ForEach(Platform.allCases, id: \.rawValue) { item in
                PlatformIcon(platform: item)
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(Color.white)
                    .background(Color.black)
            }
        }
    }
}
