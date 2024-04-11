//
//  Mk1Specs_iPad.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/11/24.
//

import SwiftUI

struct Mk1Specs_iPad: View {
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                    .frame(height:55)
                Text("Specificații pentru prima generație de Twingo")
                    .foregroundColor(Color.customGreen)
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.8, alignment: .leading)
                Spacer()
                    .frame(height:geometry.size.height*0.05)
                HStack{
                    Spacer()
                        .frame(width:geometry.size.width*0.03)
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.18)
                                .cornerRadius(23)
                                .shadow(radius: 10)
                                .padding(5)
                                .foregroundColor(Color.customGreen)
                            VStack{
                                Image("c3g")
                                    .resizable()
                                    .frame(width: geometry.size.width*0.33, height: geometry.size.height*0.125)
                                    .cornerRadius(10)
                                Text("1.2(55/58 CP)")
                                    .foregroundColor(Color.white)
                            }

                        }
                    }
                    
                    VStack{
                        Spacer()
                            .frame(height:geometry.size.height*0.03)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("Viteză maximă:")
                                .frame(width: geometry.size.width*0.35,alignment:.leading)
                        }
                        Text("150 km/h")
                            .foregroundColor(Color.customGreen)
                            .frame(width: geometry.size.width*0.27,alignment:.leading)
                        Spacer()
                            .frame(height:geometry.size.height*0.009)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("0-100 km/h:")
                                .frame(width: geometry.size.width*0.35,alignment:.leading)
                        }
                        Text("13.4 (16.4 auto) sec")
                            .frame(width: geometry.size.width*0.37,alignment:.leading)
                            .foregroundColor(Color.customGreen)
                        Spacer()
                            .frame(height:geometry.size.height*0.009)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("Consum mediu (aproximativ):")
                                .frame(width: geometry.size.width*0.35,alignment:.leading)
                        }
                        Text("6 (7.4 auto) l/100 km")
                            .frame(width: geometry.size.width*0.37,alignment:.leading)
                            .foregroundColor(Color.customGreen)
                        
                    }
                }
                
                
                HStack{
                    Spacer()
                        .frame(width:geometry.size.width*0.03)
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.18)
                                .cornerRadius(23)
                                .shadow(radius: 10)
                                .padding(5)
                                .foregroundColor(Color.customGreen)
                            VStack{
                                Image("d4f")
                                    .resizable()
                                    .frame(width: geometry.size.width*0.33, height: geometry.size.height*0.125)
                                    .cornerRadius(10)
                                Text("1.2(75 CP)")
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                    
                    VStack{
                        Spacer()
                            .frame(height:geometry.size.height*0.03)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("Viteză maximă:")
                                .frame(width: geometry.size.width*0.35,alignment:.leading)
                        }
                        Text("168 km/h")
                            .foregroundColor(Color.customGreen)
                            .frame(width: geometry.size.width*0.27,alignment:.leading)
                        Spacer()
                            .frame(height:geometry.size.height*0.009)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("0-100 km/h:")
                                .frame(width: geometry.size.width*0.35,alignment:.leading)
                        }
                        Text("11.7 (13.3 auto) sec")
                            .foregroundColor(Color.customGreen)
                            .frame(width: geometry.size.width*0.32,alignment:.leading)
                        Spacer()
                            .frame(height:geometry.size.height*0.009)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("Consum mediu (aproximativ):")
                                .frame(width: geometry.size.width*0.35,alignment:.leading)
                        }
                        Text("5.9 l/100 km")
                            .foregroundColor(Color.customGreen)
                            .frame(width: geometry.size.width*0.27,alignment:.leading)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    Mk1Specs_iPad()
}
