//
//  Mk2SelectionPrice.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/21/24.
//

import SwiftUI

struct Mk2SelectionPrice: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass?
    
    var body: some View {
        if HorizontalSize == .regular{
            Mk2Price_iPad()
        }
        else{
            Mk2Price()
        }
    }
}

#Preview {
    Mk2SelectionPrice()
}
