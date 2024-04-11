//
//  ContentViewSelection.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/11/24.
//

import SwiftUI

struct ContentViewSelection: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass? //this checks if the device is an ipad, if so, it will show the appropriate view
    var body: some View {
        if HorizontalSize == .regular{
            ContentView_iPad()
        }
        else{
            ContentView()
        }
    }
}

#Preview {
    ContentViewSelection()
}
