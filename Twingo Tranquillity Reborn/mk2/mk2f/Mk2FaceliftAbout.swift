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
                După prezentarea unui concept inițial la Salonul "Mondial de l'Automobile" din 2006, Renault a debutat modelul de serie la Salonul Auto de la Geneva din 2007, cu niveluri de echipare pentru piața franceză numite Authentique, Expression, Initiale, Dynamique și GT.
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
                    Folosind platforma Clio II, Twingo II a oferit o protecție îmbunătățită la impact și a fost disponibil atât în configurații cu volan pe dreapta, cât și pe stânga. Producția a început în Franța și a fost mutată ulterior la fabrica Revoz din Novo Mesto, Slovenia.
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
                    În ianuarie 2008, Renault a prezentat la Salonul Auto de la Geneva, Twingo Renaultsport (RS) 133, cu un motor nou de 1.598 cmc ce dezvoltă 133 CP (98 kW). Comenzile și producția modelului RS au încetat în august 2013.
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
                Recenzile vremii au apreciat ca puncte forte ale interiorului noului Twingo faptul că designul bordului este unul atractiv și faptul că include acum un turometru, dar și vitezometrul digital, amplasat central.
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
                Totuși, jurnaliștii vremii au descris interiorul ca unul modest, chiar "spartan" datorită abundenței plasticului în componența sa, totuși ceva normal și de așteptat pentru un autovehicul accesibil din punct de vedere al prețului.
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
                Ca opțiuni, se remarcă volanul și schimbătorul din piele, iar nivelul de echipare standard includea: aer condiționat, CD player cu conectivitate pentru iPod și scaune spate rabatabile.
                """)
                                .frame(maxWidth: 360, maxHeight: 190)
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
