//
//  ContentView_iPad.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/11/24.
//

import SwiftUI
import AVKit

struct ContentView_iPad: View {
    @State private var test=true
    @State private var sound="speaker.wave.3"
    let player=AVPlayer(url:Bundle.main.url(forResource: "liberte", withExtension: "mp4")!)
    var body: some View {
        //This right here are the tabs I used for the app's main menu
        //var used here to check if the home tab is selected
        GeometryReader{ geometry in
        TabView(selection: $test){
                VStack{
                    Button ("", systemImage: sound ){
                        test.toggle()
                        player.isMuted.toggle()//Button that mutes the playback of the main video
                        if test==true{
                            sound="speaker.wave.3"
                        }
                        else{
                            sound="speaker.slash.fill"
                        }
                    }
                    .frame(width: geometry.size.width*0.9, alignment: .trailing)
                    .buttonStyle(.bordered)
                    Text("""
                        Bun venit la bordul "Twingo Tranquility"!🗿
                        De ce ai alege orice alt petite citadine când există Twingo?
                        """)
                    .font(.title2)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                    Spacer()
                        .frame(height: geometry.size.height*0.05)
                    VideoPlayer(player: player)
                        .frame(width: 487.5, height: 866.6)
                        .cornerRadius(10)
                        .disabled(true)
                    
                }
                .onAppear{
                    player.play()
                    //used to loop the video, it adds the observer to check for the video duration and then restarts it when it hits that timeh
                    NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: nil) {
                        notif in // 3
                        player.seek(to: .zero) // 4
                        player.play() // 5
                    }
                }
                
                .onDisappear(){
                    player.pause()
                }
                .frame(height: geometry.size.height)
                .tabItem {
                    Label("Acasă", systemImage: "house" )
                }
                
                RowSelection()
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
}

#Preview {
    ContentView_iPad()
}
