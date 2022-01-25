//
//  ThemeConfiguratorScreenView.swift
//  
//
//  Created by Sergey Khliustin on 19.01.2022.
//

import Foundation
import SwiftUI

struct ThemeConfiguratorScreenView: View {
    @Environment(\.themeUpdater) var theme
    
    var body: some View {
        let dict = theme.wrappedValue.dictionary as? [String: String] ?? [:]
        
        ScrollView {
            VStack(spacing: 8) {
                ForEach(dict.keys.sorted(), id: \.hashValue) { key in
                    let binding: Binding<CGColor> = Binding(get: {
                        return try! Color(hex: dict[key]!).cgColor!
                    }, set: { cgColor in
                        var dict = dict
                        dict[key] = try! Color(UIColor(cgColor: cgColor)).hex()
                        theme.wrappedValue = try! Theme(from: dict)
                    })
                    
                    ColorPicker(key, selection: binding)
                        .frame(height: 44)
                        .padding(.horizontal, 16)
                }
                IconActionItem(title: "Export", icon: "square.and.arrow.up.fill") {
                    let encoder = JSONEncoder()
                    do {
                        let data = try encoder.encode(theme.wrappedValue)
                        let url = URL(fileURLWithPath: (NSTemporaryDirectory() as NSString).appendingPathComponent("theme.json"))
                        try data.write(to: url)
                        let controller = UIActivityViewController(activityItems: [url], applicationActivities: nil)
                        
                        UIApplication.shared.windows.first?.rootViewController?.present(controller, animated: true)
                    } catch {
                        logger.error(error)
                    }
                }
            }
            .padding(.vertical, 8)
        }
        .navigationTitle("Theme")
    }
}