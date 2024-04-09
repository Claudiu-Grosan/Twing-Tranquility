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
        GeometryReader { geometry in
            VStack{
                Button ("Back", systemImage: "chevron.backward" ){
                    dismiss()
                }
                .frame(width: geometry.size.width*0.9, alignment: .leading)
                .buttonStyle(.bordered)
                Spacer()
                    .frame(height:geometry.size.height*0.1)
                
                Text("Specificații pentru a doua generație de Twingo")
                    .foregroundStyle(
                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                    )
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                Text("Motoare pe benzină")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.9, height:geometry.size.height*0.015, alignment: .leading)
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        HStack{
                            ZStack{
                                Rectangle()
                                    .fill(Color.customBlue)
                                    .frame(width: geometry.size.width*0.47, height: geometry.size.height*0.16)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                VStack{
                                    Image("mk2.58hp")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.31, height: geometry.size.height*0.105)
                                        .cornerRadius(10)
                                    Text("1.2(58 CP)")
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
                            Text("150 km/h")
                                .foregroundColor(Color.customBlue)
                                .frame(width: geometry.size.width*0.22,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("0-100 km/h:")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            Text("15 sec")
                                .foregroundColor(Color.customBlue)
                                .frame(width: geometry.size.width*0.22,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Consum mediu (aproximativ):")
                                    .frame(width: geometry.size.width*0.35,alignment:.leading)
                            }
                            Text("5.5 l/100 km")
                                .foregroundColor(Color.customBlue)
                                .frame(width: geometry.size.width*0.29,alignment:.leading)
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
                            //PANA AICI
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
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(Color.customBlue)
                                        .frame(width: 200, height: 125)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("1.2tce")
                                            .resizable()
                                            .frame(width: 116, height: 86)
                                            .cornerRadius(10)
                                        Text("1.2 TCE (100 CP)")
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
                                Text("185 km/h")
                                    .foregroundColor(Color.customBlue)
                                    .frame(maxWidth:100, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(maxWidth: 150, alignment: .leading)
                                }
                                Text("9.8 sec")
                                    .foregroundColor(Color.customBlue)
                                    .frame(maxWidth:100, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width:150, height: 42.5, alignment: .leading)
                                }
                                Text("5.9 l/100 km")
                                    .foregroundColor(Color.customBlue)
                                    .frame(maxWidth: 110, alignment: .leading)
                            }
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing))
                                        .frame(width: 200, height: 125)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("mk2Engine")
                                            .resizable()
                                            .frame(width: 116, height: 86)
                                            .cornerRadius(10)
                                        Text("1.6 RS (133 CP)")
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
                                Text("201 km/h")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(maxWidth:100, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(maxWidth: 150, alignment: .leading)
                                }
                                Text("8.7 sec")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(maxWidth:100, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width:150, height: 42.5, alignment: .leading)
                                }
                                Text("6.7 l/100 km")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(maxWidth: 110, alignment: .leading)
                            }
                        }
                    }
                    
                })
                .frame(height: 155)
                Spacer()
                    .frame(height: 30)
                Text("Motoare pe motorină")
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
                                    Image("65dci")
                                        .resizable()
                                        .frame(width: 126, height: 86)
                                        .cornerRadius(10)
                                    Text("1.5 dci (65 CP)")
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
                            Text("164 km/h")
                                .foregroundColor(Color.customBlue)
                                .frame(maxWidth:100, alignment: .leading)
                            Spacer()
                                .frame(height:10)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("0-100 km/h:")
                                    .frame(maxWidth: 150, alignment: .leading)
                            }
                            Text("14.9 sec")
                                .foregroundColor(Color.customBlue)
                                .frame(maxWidth:100, alignment: .leading)
                            Spacer()
                                .frame(height:10)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Consum mediu (aproximativ):")
                                    .frame(width:150, height: 42.5, alignment: .leading)
                            }
                            Text("4.3 l/100 km")
                                .foregroundColor(Color.customBlue)
                                .frame(maxWidth: 110, alignment: .leading)
                        }
                        
                        
                        
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
                                        Image("75dci")
                                            .resizable()
                                            .frame(width: 120, height: 75)
                                            .cornerRadius(10)
                                        Text("1.5 dci (75 CP)")
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
                                Text("164 km/h")
                                    .foregroundColor(Color.customBlue)
                                    .frame(maxWidth: 115, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(maxWidth: 150, alignment: .leading)
                                }
                                Text("14.9 sec")
                                    .foregroundColor(Color.customBlue)
                                    .frame(maxWidth: 110, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width:150, height: 42.5, alignment: .leading)
                                }
                                Text("3.6 l/100 km")
                                    .foregroundColor(Color.customBlue)
                                    .frame(maxWidth: 110, alignment: .leading)
                            }
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing))
                                        .frame(width: 200, height: 125)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("85dci")
                                            .resizable()
                                            .frame(width: 116, height: 86)
                                            .cornerRadius(10)
                                        Text("1.5 dci (85 CP)")
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
                                Text("185 km/h")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(maxWidth:100, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(maxWidth: 150, alignment: .leading)
                                }
                                Text("11.2 sec")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(maxWidth:100, alignment: .leading)
                                Spacer()
                                    .frame(height:10)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width:150, height: 42.5, alignment: .leading)
                                }
                                Text("3.6/3.4 l/100 km")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: 110, height: 50, alignment: .leading)
                            }
                        }
                    }
                    
                })
                .frame(height: 155)
            }
        }
    }
}

#Preview {
    Mk2Specs()
}
