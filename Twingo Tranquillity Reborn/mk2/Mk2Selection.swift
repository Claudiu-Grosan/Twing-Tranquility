//
//  Mk2Selection.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/8/24.
//

import SwiftUI

struct Mk2Selection: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass? //this checks if the device is an ipad, if so, it will show the appropriate view
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        if HorizontalSize == .regular{
            GeometryReader { geometry in
                VStack{
                    Spacer()
                        .frame(height: geometry.size.height*0.04)
                    Button ("înapoi", systemImage: "chevron.backward" ){
                        dismiss()
                    }
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                    .buttonStyle(.bordered)
                    .foregroundStyle(LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing))
                    TabView{
                        Mk2About_iPad()
                            .tabItem {
                                Label("Pre-Facelift", image: "mk2Rear" )
                            }
                        Mk2FaceliftAbout_iPad()
                            .tabItem{
                                Label("Facelift", image: "mk2fRear" )
                            }
                    }
                }
            }
            
        }
        else{
            GeometryReader { geometry in
                VStack{
                    
                    Button ("înapoi", systemImage: "chevron.backward" ){
                        dismiss()
                    }
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                    .buttonStyle(.bordered)
                    .foregroundStyle(LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing))
                    TabView{
                        Mk2About()
                            .tabItem {
                                Label("Pre-Facelift", image: "mk2Rear" )
                            }
                        Mk2FaceliftAbout()
                            .tabItem{
                                Label("Facelift", image: "mk2fRear" )
                            }
                    }
                }
            }
        }
        
    }
}

#Preview {
    Mk2Selection()
}
