//
//  Mk2FaceliftAbout.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/4/24.
//

import SwiftUI

extension Color{
    public static var customPink:Color{
        return Color(UIColor(red:99/255, green: 43/255, blue:72/255, alpha: 1.0))
    }
}
struct Mk2FaceliftAbout: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Text("Despre facelift-ul celei de a doua generații de Twingo")
                    .foregroundColor(Color.customPink)
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    ScrollView(.horizontal, showsIndicators: false, content:{
                        HStack{
                            Spacer()
                                .frame(width: geometry.size.width*0.03)
                            Image("mk2FaceliftImg")
                                .resizable(capInsets: EdgeInsets(top:20, leading: 30, bottom: 30, trailing: 70))
                                .scaledToFill()
                                .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.49)
                                .clipShape(Circle())
                                .overlay{
                                    Circle().stroke(Color.customPink, lineWidth: 6)
                                }
                            Spacer()
                                .frame(width: geometry.size.width*0.04,height: geometry.size.height*0.51)
                            Spacer()
                                .frame(width: geometry.size.width*0.03)
                            Image("mk2finterior")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.49)
                                .clipShape(Circle())
                                .overlay{
                                    Circle().stroke(Color.customPink, lineWidth: 6)
                                }
                            Spacer()
                                .frame(width: geometry.size.width*0.03)
                        }
                        .padding(.vertical, 20)
                    })
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(alignment: .center){
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                În iulie 2011, Renault a prezentat un Twingo II facelift la Salonul Auto de la Frankfurt, cu un limbaj de design utilizat ulterior pe întreaga gamă, care consta într-o nouă iterație a imaginii exterioare, precum și blocuri optice față și spate redefinite.
                """)
                                .frame(width: geometry.size.width*0.90, height: geometry.size.height*0.32)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                    Facelift-ul a rămas o mașină de oraș practică și ușor de manevrat, fiind concepută drept o opțiune accesibilă. Configurațiile inteligente ale scaunelor și opțiunea de a transforma scaunul pasagerului într-o masă de picnic ofereau o funcționalitate unică interiorului conceput pentru practicalitate.
                    """)
                                .frame(width: geometry.size.width*0.90, height: geometry.size.height*0.32)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            
                        }
                    })
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                La interior nu s-au schimbat prea multe, dar Twingo s-a îmbunătățit față de aspectul său mai degrabă utilitar. Renault a înțeles faptul că multimedia și conectivitatea sunt esențiale pentru cumpărători.
                """)
                                .frame(width: geometry.size.width*0.90, height: geometry.size.height*0.32)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                                
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                Astfel, Twingo primea standard Bluetooth, intrări audio și un CD player, conexiune USB, patru difuzoare, jante din aliaj, cruise control, aer condiționat și limitator de viteză.
                """)
                                .frame(width: geometry.size.width*0.90, height: geometry.size.height*0.32)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                        }
                    })
                    
                })
                
            }
        }
    }
}

#Preview {
    Mk2FaceliftAbout()
}
