//
//  Mk1Selection.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/11/24.
//

import SwiftUI

struct Mk1Selection: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass? //this checks if the device is an ipad, if so, it will show the appropriate view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        if HorizontalSize == .regular{
            GeometryReader { geometry in
                VStack{
                    Button ("Back", systemImage: "chevron.backward" ){
                        dismiss()
                    }
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                    .buttonStyle(.bordered)
                    Mk1About_iPad()
                }
            }
            
        }
        else{
            GeometryReader { geometry in
                VStack{
                    Button ("Back", systemImage: "chevron.backward" ){
                        dismiss()
                    }
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                    .buttonStyle(.bordered)
                    Mk1About()
                }
            }
        }
        
    }
}

#Preview {
    Mk1Selection()
}
