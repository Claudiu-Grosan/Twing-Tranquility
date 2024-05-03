//
//  Mk3FaceliftAbout.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 5/3/24.
//

import SwiftUI

struct Mk3FaceliftAbout: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Text("Despre facelift-ul celei de a treia generații de Twingo")
                    .foregroundColor(Color.customYellow)
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    ScrollView(.horizontal, showsIndicators: false, content:{
                        HStack{
                            Spacer()
                                .frame(width: geometry.size.width*0.03)
                            Image("mk3Facelift")
                                .resizable(capInsets: EdgeInsets(top:65, leading: 75, bottom: 20, trailing: 75)/*play with these for ipad*/)
                                .scaledToFill()
                                .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.49)
                                .clipShape(Circle())
                                .overlay{
                                    Circle().stroke(Color.customYellow, lineWidth: 6)
                                }
                            Spacer()
                                .frame(width: geometry.size.width*0.04,height: geometry.size.height*0.51)
                            Spacer()
                                .frame(width: geometry.size.width*0.03)
                            Image("mk3Fint")
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.49)
                                .clipShape(Circle())
                                .overlay{
                                    Circle().stroke(Color.customYellow, lineWidth: 6)
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
                                    .stroke(Color.customYellow, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                Twingo a primit un facelift în 2019, aducând un design exterior mai modern cu o grilă frontală revizuită, faruri LED și culori noi. Interiorul beneficiază de materiale mai premium, opțiuni de personalizare sporite și un sistem de infotainment îmbunătățit.
                """)
                                .frame(width: geometry.size.width*0.90, height: geometry.size.height*0.32)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customYellow, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                    Gama de motorizări rămâne aproape neschimbată, cu motoare pe benzină eficiente și economice, fiind introdusă de asemenea și o versiune electrică, în timp ce versiunea GT nu-și va mai găsi un loc în gamă. 
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
                                    .stroke(Color.customYellow, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                Twingo Electric, prima mașină electrică de oraș a lui Renault a fost lansat în februarie 2020. Aceasta era disponibilă în mai multe versiuni de echipare, iar cu acest model, Renault inta în concurență cu alte mașini electrice mici, precum Fiat 500.
                """)
                                .frame(width: geometry.size.width*0.90, height: geometry.size.height*0.32)
                                .lineSpacing(5)
                                .multilineTextAlignment(.leading)
                                .fontDesign(.rounded)
                                
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius:23)
                                    .stroke(Color.customYellow, lineWidth: 5)
                                    .frame(width: geometry.size.width*0.975, height: geometry.size.height*0.32)
                                    .shadow(radius: 10)
                                    .padding(5)
                                
                                Text("""
                Deși încărcarea rapidă DC lipsea de pe toate modelele, iar versiunea de bază nu avea ca opțiuni standard radioul sau aerul condiționat, motorul electric a fost apreciat pentru performanța sa lină în traficul urban.
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
    Mk3FaceliftAbout()
}
