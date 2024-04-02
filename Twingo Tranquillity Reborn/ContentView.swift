//  ContentView.swift
//  Twingo Tranquillity
//  Created by Clau on 3/9/24.

import AVKit//needed for video player
import SwiftUI
struct ContentView: View {
    @State private var test=true
    @State private var sound="speaker.wave.3"
    let player=AVPlayer(url:Bundle.main.url(forResource: "liberte", withExtension: "mp4")!)
    var body: some View {
        //This right here are the tabs I used for the app's main menu
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
                .frame(maxWidth: 350, alignment: .trailing)
                .buttonStyle(.bordered)
                Text("""
                        Bun venit la bordul "Twingo Tranquility"!
                        
                        De ce să cumperi un Ford Fusion (verde-lime) când există Twingo?🗿
                        """)
                    .font(.system(size:26))
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(maxWidth: 350, maxHeight: 200)
                VideoPlayer(player: player)
                    .frame(width: 238, height: 423)
                    .cornerRadius(10)
                    .disabled(true)
                
                    
            }
            .onAppear{
                player.play()
                //used to loop the video, it adds the observer to check for the video duration and then restarts it when it hits that timeh
                NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime,
                                                               object: player.currentItem,
                                                               queue: nil) { notif in // 3
                            player.seek(to: .zero) // 4
                            player.play() // 5
                        }
                    }
                
            .onDisappear(){
                player.pause()
            }
            .frame(height: 700)
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

