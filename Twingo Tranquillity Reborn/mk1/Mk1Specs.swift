//
//  Mk1Specs.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 3/30/24.
//

import SwiftUI


struct Mk1Specs: View {
    @Environment(\.dismiss) var dismiss
    @State private var showContent = false
    var body: some View {
        
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                dismiss()
            }
            .frame(maxWidth: 350, alignment: .leading)
            .buttonStyle(.bordered)
            Text("Specificații pentru prima generație de Twingo")
                .foregroundColor(Color.customRed)
                .font(.title)
                .fontWeight(.black)
                .fontDesign(.rounded)
                .frame(maxWidth: 350, alignment: .leading)
            HStack{
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 200, height: 125)
                            .cornerRadius(23)
                            .shadow(radius: 10)
                            .padding(5)
                            .foregroundColor(Color.customRed)
                        VStack{
                            Image("c3g")
                                .resizable()
                                .frame(width: 106, height: 80)
                                .cornerRadius(10)
                            Text("1.2(55/58 CP)")
                                .foregroundColor(Color.white)
                        }
                    }
                }
                .fullScreenCover(isPresented: $showContent, content: Mk1About.init)//De inlocuit cu un now view pt fiecare motor in parte
                
                VStack{
                    Spacer()
                        .frame(height:30)
                    HStack{
                        Image(systemName: "circle.fill")
                        Text("Viteză maximă:")
                            .frame(maxWidth: 300, alignment: .center)
                    }
                    Text("150 km/h")
                        .foregroundColor(Color.customRed)
                    Spacer()
                        .frame(height:10)
                    HStack{
                        Image(systemName: "circle.fill")
                        Text("0-100 km/h:")
                            .frame(maxWidth: 300, alignment: .center)
                    }
                    Text("13.4 (16.4 auto) sec")
                        .foregroundColor(Color.customRed)
                    Spacer()
                        .frame(height:10)
                    HStack{
                        Image(systemName: "circle.fill")
                        Text("Consum mediu (aproximativ):")
                            .frame(maxWidth: 300, alignment: .center)
                    }
                    Text("6 (7.4 auto) l/100 km")
                        .foregroundColor(Color.customRed)
                    
                }
            }
            
            
            HStack{
                HStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 200, height: 125)
                            .cornerRadius(23)
                            .shadow(radius: 10)
                            .padding(5)
                            .foregroundColor(Color.customRed)
                        VStack{
                            Image("d4f")
                                .resizable()
                                .frame(width: 106, height: 80)
                                .cornerRadius(10)
                            Text("1.2(75 CP)")
                                .foregroundColor(Color.white)
                        }
                    }
                }
                .fullScreenCover(isPresented: $showContent, content: Mk1About.init)//De inlocuit cu un now view pt fiecare motor in parte
                
                VStack{
                    Spacer()
                        .frame(height:30)
                    HStack{
                        Image(systemName: "circle.fill")
                        Text("Viteză maximă:")
                            .frame(maxWidth: 300, alignment: .center)
                    }
                    Text("168 km/h")
                        .foregroundColor(Color.customRed)
                    Spacer()
                        .frame(height:10)
                    HStack{
                        Image(systemName: "circle.fill")
                        Text("0-100 km/h:")
                            .frame(maxWidth: 300, alignment: .center)
                    }
                    Text("11.7 (13.3 auto) sec")
                        .foregroundColor(Color.customRed)
                    Spacer()
                        .frame(height:10)
                    HStack{
                        Image(systemName: "circle.fill")
                        Text("Consum mediu (aproximativ):")
                            .frame(maxWidth: 300, alignment: .center)
                    }
                    Text("5.9 l/100 km")
                        .foregroundColor(Color.customRed)
                    
                }
            }
            
        }
    }
}

#Preview {
    Mk1Specs()
}
