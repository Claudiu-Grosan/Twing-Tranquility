//  Twingo_Tranquillity_RebornApp.swift
//  Twingo Tranquillity Reborn
//  Created by Clau on 3/16/24.

import SwiftUI

@main
struct Twingo_Tranquillity_RebornApp: App {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass?
    var body: some Scene {
        WindowGroup {
            ContentViewSelection()
        }
    }
}
