//
//  Mk3About_iPad.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 5/2/24.
//

import SwiftUI

struct Mk3About_iPad: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                VStack{
                    
                    Text("Despre a treia generație de Twingo")
                        .foregroundColor(Color.customPurple)
                        .font(.title)
                        .fontWeight(.black)
                        .fontDesign(.rounded)
                        .frame(width: geometry.size.width*0.9, alignment: .leading)
                    ScrollView(.vertical, showsIndicators: false, content: {
                        ScrollView(.horizontal, showsIndicators: false, content:{
                            HStack{
                                Spacer()
                                    .frame(width: geometry.size.width*0.03)
                                Image("mk3PreF")
                                    .resizable(capInsets: EdgeInsets(top:0, leading: 10, bottom: 40, trailing: 60))
                                    .scaledToFill()
                                    .clipShape(Circle())
                                    .overlay{
                                        Circle().stroke(Color.customPurple, lineWidth: 10)
                                        
                                    }
                                    .frame(width: geometry.size.width*0.94, height: geometry.size.height*0.56)
                                Spacer()
                                    .frame(width: geometry.size.width*0.04)
                                Spacer()
                                    .frame(width: geometry.size.width*0.03)
                                Image("mk3PreFint")
                                    .resizable()
                                    .clipShape(Circle())
                                    .scaledToFill()
                                    .overlay{
                                        Circle().stroke(Color.customPurple, lineWidth: 10)
                                        
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
                                        .stroke(Color.customPurple, lineWidth: 5)
                                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        A treia generație de Renault Twingo, dezvăluită în martie 2014 la Salonul Auto de la Geneva, a marcat o colaborare cu Daimler. Acestă mașină de oraș cu cinci uși, tracțiune spate și motor amplasat central în spate fiind fabricată în Slovenia.
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
                                        .stroke(Color.customPurple, lineWidth: 5)
                                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                            Primele mașini care au folosit platforma au fost Twingo-ul de a treia generație și Smart Forfour-ul de a doua generație. Renault și Daimler AG au investit în mod egal în faza de cercetare și dezvoltare, Renault specializându-se ulterior pe motoare, iar Daimler pe transmisii.
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
                                        .stroke(Color.customPurple, lineWidth: 5)
                                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    
                                    Text("""
                            Conceput pentru manevrabilitate și maximizarea spațiului pentru pasageri în orașele aglomerate, Twingo a obținut acest lucru prin configurația unică a motorului din spate și un unghi de virare de 45 de grade. Rămânând fidelă originilor sale, lansarea inițială a oferit o gamă de culori vii, la fel ca primul Twingo.
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
                                        .stroke(Color.customPurple, lineWidth: 5)
                                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        Opțiunile de personalizare erau numeroase, cu patru nivele de echipare (Expression, Play, Dynamique și Dynamique S) care ofereau diverse pachete. Un aspect important este că o opțiune permitea conectarea telefonului printr-un suport pentru panoul de instrumente și un sistem de infotainment (R&Go și R-Link).
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
                                        .stroke(Color.customPurple, lineWidth: 5)
                                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        De la lansarea inițială, au fost adăugate și alte niveluri de echipare precum „Energy”, iar un model GT mai sportiv a sosit la sfârșitul anului 2016, fiind succesorul în spirit al vechiului RS, versiune imposibil de realizat datorită dimensiunilor reduse ale compartimentului motorului.
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
                                        .stroke(Color.customPurple, lineWidth: 5)
                                        .frame(width: geometry.size.width*0.9, height: geometry.size.height*0.3)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    Text("""
                        Siguranța a rămas o prioritate, mașina încorporând standard senzori de presiune în pneuri, martori pentru centura de siguranță, airbag-uri (patru frontale și patru laterale pentru cap și piept). Această concentrare pe siguranță a rezultat într-o evaluare remarcabilă de patru stele la testul Euro NCAP din 2014.
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
    Mk3About_iPad()
}
