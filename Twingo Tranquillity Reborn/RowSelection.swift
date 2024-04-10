//
//  RowSelection.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/10/24.
//

import SwiftUI

struct RowSelection: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass? //this checks if the device is an ipad, if so, it will show the appropriate view
    var body: some View {
        if HorizontalSize == .regular{
            Row_iPad()
        }
        else{
            Row()
        }
    }
}

#Preview {
    RowSelection()
}
