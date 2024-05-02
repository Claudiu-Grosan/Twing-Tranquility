//
//  Mk3SelectionSpecs.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 5/2/24.
//

import SwiftUI

struct Mk3SelectionSpecs: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass?
    var body: some View {
        if HorizontalSize == .regular{
            Mk3Specs_iPad()
        }
        else{
            Mk3Specs()
        }
    }
}

#Preview {
    Mk3SelectionSpecs()
}
