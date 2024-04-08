//
//  Mk2Selection.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/8/24.
//

import SwiftUI

struct Mk2Selection: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass? //this checks if the device is an ipad, if so, it will show the appropriate view
    var body: some View {
        if HorizontalSize == .regular{
            Mk2About_iPad()
        }
        else{
            Mk2About()
        }
        
    }
}

#Preview {
    Mk2Selection()
}
