//
//  Mk2Specs.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/5/24.
//

import SwiftUI

struct Mk2Specs: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                dismiss()
            }
            .frame(maxWidth: 350, alignment: .leading)
            .buttonStyle(.bordered)
            Spacer()
                .frame(height:35)
            
            Text("Specificații pentru a doua generație de Twingo")
                .foregroundStyle(
                    LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                )
                .font(.title)
                .fontWeight(.black)
                .fontDesign(.rounded)
                .frame(maxWidth: 370, alignment: .leading)
            Text("Motoare pe benzină")
                .font(.subheadline)
                .frame(maxWidth: 350, maxHeight: 5, alignment: .leading)
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                    HStack{
                        ZStack{
                            Rectangle()
                                .fill(Color.customBlue)
                                .frame(width: 200, height: 125)
                                .cornerRadius(23)
                                .shadow(radius: 10)
                                .padding(5)
                            VStack{
                                Image("mk2.58hp")
                                    .resizable()
                                    .frame(width: 126, height: 86)
                                    .cornerRadius(10)
                                Text("1.2(58 CP)")
                                    .foregroundColor(Color.white)
                            }
                        }
                    }
                    
                    VStack{
                        Spacer()
                            .frame(height:30)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("Viteză maximă:")
                                .frame(maxWidth: 150, alignment: .leading)
                        }
                        Text("150 km/h")
                            .foregroundColor(Color.customBlue)
                            .frame(maxWidth:100, alignment: .leading)
                        Spacer()
                            .frame(height:10)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("0-100 km/h:")
                                .frame(maxWidth: 150, alignment: .leading)
                        }
                        Text("15 sec")
                            .foregroundColor(Color.customBlue)
                            .frame(maxWidth:100, alignment: .leading)
                        Spacer()
                            .frame(height:10)
                        HStack{
                            Image(systemName: "circle.fill")
                            Text("Consum mediu (aproximativ):")
                                .frame(width:150, height: 42.5, alignment: .leading)
                        }
                        Text("5.5 l/100 km")
                            .foregroundColor(Color.customBlue)
                            .frame(maxWidth: 110, alignment: .leading)
                    }
                    
                    
                    
                    HStack{
                        HStack{
                            ZStack{
                                Rectangle()
                                    .fill(LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing))
                                    .frame(width: 200, height: 125)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                    
                                VStack{
                                    Image("mk2.75hp")
                                        .resizable()
                                        .frame(width: 120, height: 85)
                                        .cornerRadius(10)
                                    Text("1.2(75 CP)")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        
                        VStack{
                            Spacer()
                                .frame(height:30)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Viteză maximă:")
                                    .frame(maxWidth: 150, alignment: .leading)
                            }
                            Text("173 (170) km/h")
                                .foregroundStyle(
                                    LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                )
                                .frame(maxWidth: 115, alignment: .leading)
                            Spacer()
                                .frame(height:10)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("0-100 km/h:")
                                    .frame(maxWidth: 150, alignment: .leading)
                            }
                            Text("13.6 (12.4 auto) sec")
                                .foregroundStyle(
                                    LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                )
                                .frame(maxWidth: 170, alignment: .leading)
                            Spacer()
                                .frame(height:10)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Consum mediu (aproximativ):")
                                    .frame(width:150, height: 42.5, alignment: .leading)
                            }
                            Text("5.6 (5.1) l/100 km")
                                .foregroundStyle(
                                    LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                )
                                .frame(maxWidth: 150, alignment: .leading)
                        }
                    }
                }
                
                
                
            })
            .frame(height: 170)
            
            
            
            
        }
    }
}

#Preview {
    Mk2Specs()
}
