//
//  Mk1About_iPad.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/10/24.
//

import SwiftUI

struct Mk1About_iPad: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                
                Text("Despre primul Twingo")
                    .foregroundColor(Color.customGreen)
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    ScrollView(.horizontal, showsIndicators: false, content:{
                        HStack{
                            Spacer()
                                .frame(width: geometry.size.width*0.03,height: geometry.size.height*0.69)
                            Image("allahTwingo")
                                .resizable()
                                .scaledToFill()
                                .clipShape(Circle())
                                .overlay{
                                    Circle().stroke(Color.customGreen, lineWidth: 10)
                                }
                                .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.49)
                            Spacer()
                                .frame(width: geometry.size.width*0.04,height: geometry.size.height*0.69)
                            Spacer()
                                .frame(width: geometry.size.width*0.03,height: geometry.size.height*0.69)
                            Image("mk1interior")
                                .resizable()
                                .clipShape(Circle())
                                .scaledToFill()
                                .overlay{
                                    Circle().stroke(Color.customGreen, lineWidth: 10)
                                }
                                .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.643)
                            Spacer()
                                .frame(width: geometry.size.width*0.03,height: geometry.size.height*0.74)
                        }
                        
                    })
                    .padding(.vertical, 10)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customGreen, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Lansat inițial în aprilie 1993, primul Twingo a fost vândut pe piețele europene cu volan pe partea stângă până în august 2007, primind actualizări estetice intermediare în 1998, 2000 și 2004.
                        """)
                                .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.25)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customGreen, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Conceput sub conducerea lui Patrick Le Quément, designerul șef al Renault, mașina a derivat din conceptul dezvoltat prin proiectul W60 pe vremea când Gaston Juchet era designerul șef al Renault.
                        """)
                                .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.25)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customGreen, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Le Quément a ales un design al lui Jean-Pierre Ploué pentru a dezvolta versiunea de serie. El a prelungit prototipul original și a adăugat o  inedită parte frontală, ce amintește de un "zâmbet".
                        """)
                                .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.25)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                                
                            }
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                            
                        }
                    })
                    
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customGreen, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Echipamentele interioare au fost montate pe o consolă centrală pentru a elibera spațiu. Renault participase la proiectul auto ECO 2000 „Mono-Box” din perioada 1981-1984, împreună cu PSA Peugeot Citroën și guvernul francez.
                        """)
                                .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.25)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                                
                            }
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customGreen, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Un rând de lumini de avertizare era localizat în spatele volanului. Bancheta din spate beneficia de un mecanism glisant pentru a permite creșterea spațiului de încărcare.
                        """)
                                .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.25)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customGreen, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.25)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                        Etajera portbagajului era atașată pe interiorul hayonului și se ridica odată cu acesta sau putea fi fixată cu cleme deasupra lunetei când nu era necesară.
                        """)
                                .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.25)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            Spacer()
                                .frame(width: geometry.size.width*0.045)
                        }
                    })
                })
            }
        }
    }
}

#Preview {
    Mk1About_iPad()
}
