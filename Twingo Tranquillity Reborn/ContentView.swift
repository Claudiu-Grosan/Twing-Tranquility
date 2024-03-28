//
//  ContentView.swift
//  Twingo Tranquillity
//
//  Created by Clau on 3/9/24.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        //This right here are the tabs I used for the app's main menu
        TabView{
            VStack{
                Text("""
                        Bun venit la bordul "Twingo Tranquility"!
                        
                        De ce să cumperi un Ford Fusion (verde-lime) când există Twingo?🗿
                        """)
                    .font(.system(size:26))
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(maxWidth: .infinity)
            }
            .tabItem {
                Label("Acasă", systemImage: "house" )
            }
            
            Row()
            .tabItem {
                Label("Twingo-uri", image: "Ticon" )
            }
            
            
            VStack{
                
                List{
                    Section {
                        Text("""
                             Realizat de către: NyHr (Grosan "Goosander A. Mihail" Claudiu)
                             """)
                        Text("Realizat în cadrul: Informatică la rupere")
                    } header: {
                        Text("💀")
                        
                    }
                }
            }
            .tabItem {
                Label("Despre", systemImage: "info.circle.fill" )
            }
            
        }
    }
    
}

#Preview {
    ContentView()
}

