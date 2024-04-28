//
//  Mk3Specs.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/27/24.
//

import SwiftUI

struct Mk3Specs: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Button ("Back", systemImage: "chevron.backward" ){
                    dismiss()
                }
                .frame(width: geometry.size.width*0.91, alignment: .leading)
                .buttonStyle(.bordered)
                Spacer()
                    .frame(height:geometry.size.height*0.1)
                
                Text("Specificații pentru a treia generație de Twingo")
                    .foregroundStyle(
                        LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                    )
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.91, alignment: .leading)
                Spacer()
                    .frame(height:geometry.size.height*0.035)
                Text("Motoare pe benzină")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.9, height:geometry.size.height*0.01, alignment: .leading)
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    HStack{
                        Spacer()
                            .frame(width:geometry.size.width*0.03)
                        HStack{
                            ZStack{
                                Rectangle()
                                    .fill(Color.customYellow)
                                    .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.16)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                VStack{
                                    Image("Sce1")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.33, height: geometry.size.height*0.105)
                                        .cornerRadius(10)
                                    Text("1.0 SCe (65 CP)")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        
                        VStack{
                            Spacer()
                                .frame(height:geometry.size.height*0.04)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Viteză maximă:")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            Text("158 km/h")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.22,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("0-100 km/h:")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            Text("15.1 sec")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.22,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Consum mediu (aproximativ):")
                                    .frame(width: geometry.size.width*0.35,height: geometry.size.height*0.066,alignment:.leading)
                            }
                            Text("5.1 l/100 km")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.3,alignment:.leading)
                        }
                        
                        
                        
                        HStack{
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing))
                                        .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.16)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    
                                    VStack{
                                        Image("mk2.75hp")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.31, height: geometry.size.height*0.105)
                                            .cornerRadius(10)
                                        Text("1.2(75 CP)")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }

                            VStack{
                                Spacer()
                                    .frame(height:geometry.size.height*0.04)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Viteză maximă:")
                                        .frame(width: geometry.size.width*0.35,alignment:.leading)
                                }
                                Text("173 (170) km/h")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.29,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(width: geometry.size.width*0.35,alignment:.leading)
                                }
                                Text("13.6 (12.4 auto) sec")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width: geometry.size.width*0.35,height: geometry.size.height*0.066,alignment:.leading)
                                }
                                Text("5.6 (5.1) l/100 km")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(Color.customBlue)
                                        .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.16)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("1.2tce")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.31, height: geometry.size.height*0.105)
                                            .cornerRadius(10)
                                        Text("1.2 TCE (100 CP)")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            
                            VStack{
                                Spacer()
                                    .frame(height:geometry.size.height*0.04)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Viteză maximă:")
                                        .frame(width: geometry.size.width*0.35,alignment:.leading)
                                }
                                Text("185 km/h")
                                    .foregroundColor(Color.customBlue)
                                    .frame(width: geometry.size.width*0.22,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(width: geometry.size.width*0.35,alignment:.leading)
                                }
                                Text("9.8 sec")
                                    .foregroundColor(Color.customBlue)
                                    .frame(width: geometry.size.width*0.22,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width: geometry.size.width*0.35,height: geometry.size.height*0.066,alignment:.leading)
                                }
                                Text("5.9 l/100 km")
                                    .foregroundColor(Color.customBlue)
                                    .frame(width: geometry.size.width*0.3,alignment:.leading)
                            }
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing))
                                        .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.16)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("mk2Engine")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.31, height: geometry.size.height*0.105)
                                            .cornerRadius(10)
                                        Text("1.6 RS (133 CP)")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            
                            VStack{
                                Spacer()
                                    .frame(height:geometry.size.height*0.04)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Viteză maximă:")
                                        .frame(width: geometry.size.width*0.35,alignment:.leading)
                                }
                                Text("201 km/h")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.22,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(width: geometry.size.width*0.35,alignment:.leading)
                                }
                                Text("8.7 sec")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.22,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width: geometry.size.width*0.35,height: geometry.size.height*0.066,alignment:.leading)
                                }
                                Text("6.7 l/100 km")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.3,alignment:.leading)
                            }
                            
                        }
                    }
                    
                })
                Text("Motoare pe motorină")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.9, height:geometry.size.height*0.01, alignment: .leading)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        Spacer()
                            .frame(width:geometry.size.width*0.03)
                        HStack{
                            ZStack{
                                Rectangle()
                                    .fill(Color.customBlue)
                                    .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.16)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                VStack{
                                    Image("65dci")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.31, height: geometry.size.height*0.105)
                                        .cornerRadius(10)
                                    Text("1.5 dci (65 CP)")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        
                        VStack{
                            Spacer()
                                .frame(height:geometry.size.height*0.04)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Viteză maximă:")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            Text("164 km/h")
                                .foregroundColor(Color.customBlue)
                                .frame(width: geometry.size.width*0.22,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("0-100 km/h:")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            Text("14.9 sec")
                                .foregroundColor(Color.customBlue)
                                .frame(width: geometry.size.width*0.22,alignment:.leading)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Consum mediu (aproximativ):")
                                    .frame(width: geometry.size.width*0.35,height: geometry.size.height*0.066,alignment:.leading)
                            }
                            Text("4.3 l/100 km")
                                .foregroundColor(Color.customBlue)
                                .frame(width: geometry.size.width*0.3,alignment:.leading)
                        }

                    }
                    
                })
            }
        }
    }
                        
}

#Preview {
    Mk3Specs()
}
