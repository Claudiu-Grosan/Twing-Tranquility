//
//  Mk3Selection.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 5/2/24.
//

import SwiftUI

struct Mk3Selection: View {
    @Environment(\.horizontalSizeClass) var HorizontalSize:UserInterfaceSizeClass?
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
                    .foregroundStyle(LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing))
                    TabView{
                        Mk3About_iPad()
                            .tabItem {
                                Label("Pre-Facelift", image: "mk3Front" )
                            }
                        Mk3FaceliftAbout_iPad()
                            .tabItem{
                                Label("Facelift", image: "mk3FrontF" )
                                
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
                    .foregroundStyle(LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing))
                    TabView{
                        Mk3About()
                            .tabItem {
                                Label("Pre-Facelift", image: "mk3Front" )
                            }
                        Mk3FaceliftAbout()
                            .tabItem{
                                Label("Facelift", image: "mk3FrontF" )
                            }
                    }
                }
            }
        }
        
    }
}

#Preview {
    Mk3Selection()
}
