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
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Text("Despre facelift-ul celei de a doua generații de Twingo")
                .foregroundColor(Color.customPink)
                .font(.title)
                .fontWeight(.black)
                .fontDesign(.rounded)
                .frame(maxWidth: 350, alignment: .leading)
            ScrollView(.vertical, showsIndicators: false, content: {
                
                VStack{
                    Image("mk2FaceliftImg")
                        .resizable(capInsets: EdgeInsets(top:10, leading: 40, bottom: 40, trailing: 50))
                        .frame(width: 549,height: 343)
                        .clipShape(Circle())
                        .overlay{
                            Circle().stroke(Color.customPink, lineWidth: 6)
                        }
                        Spacer()
                        .frame(height: 20)
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(alignment: .center){
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                În iulie 2011, Renault a prezentat un Twingo II facelift la Salonul Auto de la Frankfurt, cu un limbaj de design utilizat ulterior pe întreaga gamă, care consta într-o nouă iterație a imaginii exterioare, precum și blocuri optice față și spate redefinite.
                """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                    Facelift-ul a rămas o mașină de oraș practică și ușor de manevrat, fiind concepută drept o opțiune accesibilă. Configurațiile inteligente ale scaunelor și opțiunea de a transforma scaunul pasagerului într-o masă de picnic ofereau o funcționalitate unică interiorului conceput pentru practicalitate.
                    """)
                                .frame(maxWidth: 370, maxHeight: 190)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            
                        }
                    })
                    .frame(maxWidth: 390)
                }
                .padding(10)
                
                VStack{
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                La interior nu s-au schimbat prea multe, dar Twingo s-a îmbunătățit față de aspectul său mai degrabă utilitar. Renault a înțeles faptul că multimedia și conectivitatea sunt esențiale pentru cumpărători.
                """)
                                .frame(maxWidth: 370, maxHeight: 190)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                                
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customPink, lineWidth: 5)
                                    .frame(width: 380, height: 180)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                Astfel, Twingo primea standard Bluetooth, intrări audio și un CD player, conexiune USB, patru difuzoare, jante din aliaj, cruise control, aer condiționat și limitator de viteză.
                """).frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                            }
                        }
                    })
                    .frame(maxWidth: 390)
                }
                .padding(10)
            })
            
        }
    }
}

#Preview {
    Mk2FaceliftAbout()
}
