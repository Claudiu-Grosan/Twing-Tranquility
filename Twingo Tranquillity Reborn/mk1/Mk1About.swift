//
//  Mk1About.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 3/22/24.
//

import SwiftUI

extension Color{
    public static var customRed:Color{
        return Color(UIColor(red:168/255, green: 50/255, blue:80/255, alpha: 1.0))
    }
}
    
struct Mk1About: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                dismiss()
            }
            .frame(maxWidth: 350, alignment: .leading)
            .buttonStyle(.bordered)
            Text("Despre primul Twingo")
                //.underline(color: Color.customRed)
                .foregroundColor(Color.customRed)
                .font(.title)
                .fontWeight(.black)
                .fontDesign(.rounded)
                .frame(maxWidth: 350, alignment: .leading)
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack{
                    Image("allahTwingo")
                        .resizable()
                        .overlay{
                            Circle().stroke(Color.customRed, lineWidth: 10)
                        }
                        .frame(width: 370, height: 370)
                        .cornerRadius(290)
                        .padding(10)
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customRed, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Lansat inițial în aprilie 1993, primul Twingo a fost vândut pe piețele europene cu volan pe partea stângă până în august 2007, primind actualizări estetice intermediare în 1998, 2000 și 2004.
                        """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customRed, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Conceput sub conducerea lui Patrick Le Quément, designerul șef al Renault, mașina a derivat din conceptul dezvoltat prin proiectul W60 pe vremea când Gaston Juchet era designerul șef al Renault.
                        """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customRed, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Le Quément a ales un design al lui Jean-Pierre Ploué pentru a dezvolta versiunea de serie. El a prelungit prototipul original și a adăugat o  inedită parte frontală, ce amintește de un "zâmbet".
                        """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                                
                            }
                            
                        }
                    })
                    
                }
                .padding(10)
                
                VStack{
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customRed, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Echipamentele interioare au fost montate pe o consolă centrală pentru a elibera spațiu. Renault participase la proiectul auto ECO 2000 „Mono-Box” din perioada 1981-1984, împreună cu PSA Peugeot Citroën și guvernul francez.
                        """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                                
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customRed, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Un rând de lumini de avertizare era localizat în spatele volanului. Bancheta din spate beneficia de un mecanism glisant pentru a permite creșterea spațiului de încărcare.
                        """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customRed, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Le Quément a ales un design al lui Jean-Pierre Ploué pentru a dezvolta versiunea de serie. El a prelungit prototipul original și a adăugat o  inedită parte frontală, ce amintește de un "zâmbet".
                        """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                                
                            }
                        }
                    })
                }
                .padding(10)
            })
        }
    }
}
#Preview {
    Mk1About()
}
