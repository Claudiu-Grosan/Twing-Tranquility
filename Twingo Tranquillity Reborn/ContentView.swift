//  ContentView.swift
//  Twingo Tranquillity
//  Created by Clau on 3/9/24.

import AVKit//needed for video player
import SwiftUI
struct ContentView: View {
    @Environment(\.openURL) var openURL
    @State private var test=true
    @State private var sound="speaker.wave.3"
    @Environment(\.colorScheme) var colorScheme
    let player=AVPlayer(url:Bundle.main.url(forResource: "liberte", withExtension: "mp4")!)
    var body: some View {
        
        
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
                    VideoPlayer(player: player)
                        .frame(width: 243.8, height: 433.3)
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
                
                Row()
                    .tabItem {
                        Label("Twingo-uri", image: "Ticon" )
                    }
                
                
                VStack{
                    
                    List{
                        Section {
                            Text("""
                             Fiecare generație are o culoare specifică, iar pentru cele care au primit un facelift, două culori.
                             """)
                            Text("""
                                 Un exemplu concret se regăsește mai jos, pentru meniul generației 2. Culorile sunt albastru și roz, iar umplerea în stil "gradient" sugerează faptul că unele caracteristici sunt comune (motorizările).
                                 """ )
                            if (colorScheme == .dark){
                                Image("menu")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.45)
                                    
                            }
                            else{
                                Image("menuLight")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(15)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.45)
                                    
                            }
                            Text("""
                                 În cazul în care umplerea este într-o singură culoare, aceasta arată că respectiva caracteristică se aplică doar unei versiuni (aici, albastru, pentru pre-facelift).
                                 """ )
                            
                        } header: {
                            Text("Legendă pentru a înțelege design-ul")
                        }
                        Section{
                            HStack{
                                Image(systemName: "circle.fill").foregroundColor(Color.customGreen)
                                Text("Prima generație")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            HStack{
                                Image(systemName: "circle.fill").foregroundColor(Color.customBlue)
                                Text("A doua generație (pre-facelift)")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            HStack{
                                Image(systemName: "circle.fill").foregroundColor(Color.customPink)
                                Text("A doua generație (facelift)")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            HStack{
                                Image(systemName: "circle.fill").foregroundColor(Color.customPurple)
                                Text("A treia generație (pre-facelift)")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            HStack{
                                Image(systemName: "circle.fill").foregroundColor(Color.customYellow)
                                Text("A treia generație (facelift)")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                        }header:{
                            Text("Legenda culorilor")
                        }
                        Section{
                            HStack{
                                Spacer()
                                    .frame(width: geometry.size.width*0.045)
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.youtube.com/watch?v=DLj9yM-zLyc")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://developer.apple.com/tutorials/swiftui")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://developer.apple.com/documentation/swift/hashable")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://stackoverflow.com/questions/56437335/go-to-a-new-view-using-swiftui")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.youtube.com/watch?v=X5hy3M47OC4")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://stackoverflow.com/questions/56505692/how-to-resize-image-with-swiftui")!)
                                }
                            }
                            
                            HStack{
                                Spacer()
                                    .frame(width: geometry.size.width*0.045)
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://forums.developer.apple.com/forums/thread/677071")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-present-a-full-screen-modal-view-using-fullscreencover")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.youtube.com/watch?v=NNxz_sXKrto")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.youtube.com/watch?v=9QhhpeYKjOs")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://stackoverflow.com/questions/57614998/swiftui-list-header-and-subheader")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://en.wikipedia.org/wiki/Renault_Twingo")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.youtube.com/watch?v=0axI-Cgg-NI&t=70s")!)
                                }
                            }
                            
                            HStack{
                                Spacer()
                                    .frame(width: geometry.size.width*0.045)
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-make-a-fixed-size-spacer")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-play-movies-with-videoplayer")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.swiftanytime.com/blog/videoplayer-in-swiftui")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://sarunw.com/posts/how-to-render-text-with-color-gradient-in-swiftui/")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.hackingwithswift.com/quick-start/swiftui/how-to-provide-relative-sizes-using-geometryreader")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://developer.apple.com/design/human-interface-guidelines/layout#Specifications")!)
                                }
                                Button("", systemImage: "link") {
                                    openURL(URL(string: "https://www.youtube.com/watch?app=desktop&v=rbiof06p5lo")!)
                                }
                            }
                            Text("Realizator: Groșan Claudiu")
                            Text("Scop: Lucrare pentru atestatul profesional la informatică 2024.")
                            
                        }header:{
                            Text("Bibliografie și alte informații")
                        }
                    }
                    .listStyle(InsetGroupedListStyle())
                }
                .tabItem {
                    Label("Informații utile", systemImage: "info.circle.fill" )
                }
                
            }
        }
    }
    
}

#Preview {
    ContentView()
}

