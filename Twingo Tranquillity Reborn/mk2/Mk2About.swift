//  Mk2About.swift
//  Twingo Tranquillity Reborn
//  Created by Clau on 4/2/24.

import SwiftUI

extension Color{
    public static var customBlue:Color{
        return Color(UIColor(red:21/255, green: 95/255, blue:214/255, alpha: 1.0))
    }
}

struct Mk2About: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                dismiss()
            }
            .frame(maxWidth: 350, alignment: .leading)
            .buttonStyle(.bordered)
            
            TabView{
                VStack{
                    
                    Text("Despre a doua generație de Twingo")
                        .foregroundColor(Color.customBlue)
                        .font(.title)
                        .fontWeight(.black)
                        .fontDesign(.rounded)
                        .frame(maxWidth: 350, alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false, content: {
                        ScrollView(.horizontal, showsIndicators: false, content:{
                            HStack{
                                Image("mk2img")
                                    .resizable(capInsets: EdgeInsets(top:20, leading: 30, bottom: 30, trailing: 70))
                                    .scaledToFill()
                                    .overlay{
                                        Circle().stroke(Color.customBlue, lineWidth: 10)
                                    }
                                    .frame(width: 386, height: 386)
                                    .cornerRadius(200)
                                    
                                Image("mk2interior")
                                    .resizable()
                                    .scaledToFill()
                                    .overlay{
                                        Circle().stroke(Color.customBlue, lineWidth: 10)
                                    }
                                    .frame(width: 386, height: 386)
                                    .cornerRadius(200)

                            }
                        })
                        .padding(.vertical, 20)
                        .frame(width:386)
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius:23)
                                        .stroke(Color.customBlue, lineWidth: 5)
                                        .frame(width: 380, height: 180)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        După prezentarea unui concept inițial la Salonul "Mondial de l'Automobile" din 2006, Renault a debutat modelul de serie la Salonul Auto de la Geneva din 2007, cu niveluri de echipare pentru piața franceză numite Authentique, Expression, Initiale, Dynamique și GT.
                        """)
                                        .frame(maxWidth: 370, maxHeight: 190)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                    }
                                
                                ZStack{
                                    RoundedRectangle(cornerRadius:23)
                                        .stroke(Color.customBlue, lineWidth: 5)
                                        .frame(width: 380, height: 180)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                            Folosind platforma Clio II, Twingo II a oferit o protecție îmbunătățită la impact și a fost disponibil atât în configurații cu volan pe dreapta, cât și pe stânga. Producția a început în Franța și a fost mutată ulterior la fabrica Revoz din Novo Mesto, Slovenia.
                            """)
                                        .frame(maxWidth: 370, maxHeight: 190)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                    }
                                ZStack{
                                    RoundedRectangle(cornerRadius:23)
                                        .stroke(Color.customBlue, lineWidth: 5)
                                        .frame(width: 380, height: 180)
                                        .shadow(radius: 10)
                                        .padding(5)
                                        
                                    Text("""
                            În ianuarie 2008, Renault a prezentat la Salonul Auto de la Geneva, Twingo Renaultsport (RS) 133, cu un motor nou de 1.598 cmc ce dezvoltă 133 CP (98 kW). Comenzile și producția modelului RS au încetat în august 2013.
                            """)
                                    .frame(maxWidth: 370, maxHeight: 190)
                                    .lineSpacing(5)
                                    .multilineTextAlignment(.leading)
                                    .fontDesign(.rounded)
                                        
                                    }
                                    
                                }
                            })
                            .frame(width:390)
                        
                        ScrollView(.horizontal, showsIndicators: false, content: {
                            HStack{
                                ZStack{
                                    RoundedRectangle(cornerRadius:23)
                                        .stroke(Color.customBlue, lineWidth: 5)
                                        .frame(width: 380, height: 180)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        Recenzile vremii au apreciat ca puncte forte ale interiorului noului Twingo faptul că designul bordului este unul atractiv și faptul că include acum un turometru, dar și vitezometrul digital, amplasat central.
                        """)
                                        .frame(maxWidth: 370, maxHeight: 190)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                        
                                    }
                                ZStack{
                                    RoundedRectangle(cornerRadius:23)
                                        .stroke(Color.customBlue, lineWidth: 5)
                                        .frame(width: 380, height: 180)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        Totuși, jurnaliștii vremii au descris interiorul ca unul modest, chiar "spartan" datorită abundenței plasticului în componența sa, totuși ceva normal și de așteptat pentru un autovehicul accesibil din punct de vedere al prețului.
                        """)
                                        .frame(maxWidth: 370, maxHeight: 190)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                    }
                                ZStack{
                                    RoundedRectangle(cornerRadius:23)
                                        .stroke(Color.customBlue, lineWidth: 5)
                                        .frame(width: 380, height: 180)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        Ca opțiuni, se remarcă volanul și schimbătorul din piele, iar nivelul de echipare standard includea: aer condiționat, CD player cu conectivitate pentru iPod și scaune spate rabatabile.
                        """)
                                        .frame(maxWidth: 360, maxHeight: 190)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                        
                                    }
                                }
                            })
                            .frame(width:390)
                    })
                }
                .tabItem {
                    Label("Pre-Facelift", image: "mk2Rear" )
                }
                Mk2FaceliftAbout()
                .tabItem{
                    Label("Facelift", image: "mk2fRear" )
                }
            }
        }
    }
}

#Preview {
    Mk2About()
}
