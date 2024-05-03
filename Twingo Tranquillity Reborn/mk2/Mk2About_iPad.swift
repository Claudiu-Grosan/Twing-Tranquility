//
//  Mk2About_iPad.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/8/24.
//

import SwiftUI

struct Mk2About_iPad: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        GeometryReader { geometry in
            VStack{
                    VStack{
                        
                        Text("Despre a doua generație de Twingo")
                            .foregroundColor(Color.customBlue)
                            .font(.title)
                            .fontWeight(.black)
                            .fontDesign(.rounded)
                            .frame(width: geometry.size.width*0.9, alignment: .leading)
                        ScrollView(.vertical, showsIndicators: false, content: {
                            ScrollView(.horizontal, showsIndicators: false, content:{
                                HStack{
                                    Spacer()
                                        .frame(width: geometry.size.width*0.03)
                                    Image("mk2img")
                                        .resizable(capInsets: EdgeInsets(top:20, leading: 30, bottom: 30, trailing: 70))
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .overlay{
                                            Circle().stroke(Color.customBlue, lineWidth: 10)
                                                
                                        }
                                        .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.56)
                                    Spacer()
                                        .frame(width: geometry.size.width*0.04)
                                    Spacer()
                                        .frame(width: geometry.size.width*0.03)
                                    Image("mk2interior")
                                        .resizable()
                                        .clipShape(Circle())
                                        .scaledToFill()
                                        .overlay{
                                            Circle().stroke(Color.customBlue, lineWidth: 10)
                                                
                                        }
                                        .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.56)
                                    Spacer()
                                        .frame(width: geometry.size.width*0.03,height: geometry.size.height*0.65)
                                    
                                }
                            })
                            
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack{
                                    Spacer()
                                        .frame(width: geometry.size.width*0.045)
                                    ZStack{
                                        RoundedRectangle(cornerRadius:23)
                                            .stroke(Color.customBlue, lineWidth: 5)
                                            .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                            .shadow(radius: 10)
                                            .padding(5)
                                        Text("""
                        După prezentarea unui concept inițial la Salonul "Mondial de l'Automobile" din 2006, Renault a debutat modelul de serie la Salonul Auto de la Geneva din 2007, cu niveluri de echipare pentru piața franceză numite Authentique, Expression, Initiale, Dynamique și GT.
                        """)
                                        .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.3)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                    }
                                    Spacer()
                                        .frame(width: geometry.size.width*0.045)
                                    ZStack{
                                        RoundedRectangle(cornerRadius:23)
                                            .stroke(Color.customBlue, lineWidth: 5)
                                            .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                            .shadow(radius: 10)
                                            .padding(5)
                                        Text("""
                            Folosind platforma Clio II, Twingo II a oferit o protecție îmbunătățită la impact și a fost disponibil atât în configurații cu volan pe dreapta, cât și pe stânga. Producția a început în Franța și a fost mutată ulterior la fabrica Revoz din Novo Mesto, Slovenia.
                            """)
                                        .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.3)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                    }
                                    Spacer()
                                        .frame(width: geometry.size.width*0.045)
                                    ZStack{
                                        RoundedRectangle(cornerRadius:23)
                                            .stroke(Color.customBlue, lineWidth: 5)
                                            .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                            .shadow(radius: 10)
                                            .padding(5)
                                        
                                        Text("""
                            În ianuarie 2008, Renault a prezentat la Salonul Auto de la Geneva, Twingo Renaultsport (RS) 133, cu un motor nou de 1.598 cmc ce dezvoltă 133 CP (98 kW). Comenzile și producția modelului RS au încetat în august 2013.
                            """)
                                        .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.3)
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
                                            .stroke(Color.customBlue, lineWidth: 5)
                                            .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                            .shadow(radius: 10)
                                            .padding(5)
                                        Text("""
                        Recenzile vremii au apreciat ca puncte forte ale interiorului noului Twingo faptul că designul bordului este unul atractiv și faptul că include acum un turometru, dar și vitezometrul digital, amplasat central.
                        """)
                                        .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.3)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                        
                                    }
                                    Spacer()
                                        .frame(width: geometry.size.width*0.045)
                                    ZStack{
                                        RoundedRectangle(cornerRadius:23)
                                            .stroke(Color.customBlue, lineWidth: 5)
                                            .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                            .shadow(radius: 10)
                                            .padding(5)
                                        Text("""
                        Totuși, jurnaliștii vremii au descris interiorul ca unul modest, chiar "spartan" datorită abundenței plasticului în componența sa, totuși ceva normal și de așteptat pentru un autovehicul accesibil din punct de vedere al prețului.
                        """)
                                        .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.3)
                                        .lineSpacing(5)
                                        .multilineTextAlignment(.leading)
                                        .fontDesign(.rounded)
                                    }
                                    Spacer()
                                        .frame(width: geometry.size.width*0.045)
                                    ZStack{
                                        RoundedRectangle(cornerRadius:23)
                                            .stroke(Color.customBlue, lineWidth: 5)
                                            .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                            .shadow(radius: 10)
                                            .padding(5)
                                        Text("""
                        Ca opțiuni, se remarcă volanul și schimbătorul din piele, iar nivelul de echipare standard includea: aer condiționat, CD player cu conectivitate pentru iPod și scaune spate rabatabile.
                        """)
                                        .frame(width: geometry.size.width*0.86, height: geometry.size.height*0.3)
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
}

#Preview {
    Mk2About_iPad()
}
