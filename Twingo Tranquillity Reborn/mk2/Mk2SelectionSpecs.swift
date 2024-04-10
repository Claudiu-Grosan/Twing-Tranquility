//
//  Mk2SelectionSpecs.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/9/24.
//

import SwiftUI

struct Mk2SelectionSpecs: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass? //this checks if the device is an ipad, if so, it will show the appropriate view
    var body: some View {
        if HorizontalSize == .regular{
            Mk2Specs_iPad()
        }
        else{
            Mk2Specs()
        }
    }
}

#Preview {
    Mk2SelectionSpecs()
}
