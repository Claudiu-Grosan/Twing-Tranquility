//
//  Mk3Specs_iPad.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 5/2/24.
//

import SwiftUI

struct Mk3Specs_iPad: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                    .frame(height: geometry.size.height*0.04)
                Button ("înapoi", systemImage: "chevron.backward" ){
                    dismiss()
                }
                .frame(width: geometry.size.width*0.95, alignment: .leading)
                .buttonStyle(.bordered)
                .foregroundStyle(LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing))
                Spacer()
                    .frame(height:geometry.size.height*0.1)
                
                Text("Specificații pentru a treia generație de Twingo")
                    .foregroundStyle(
                        LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                    )
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.95, alignment: .leading)
                Spacer()
                    .frame(height:geometry.size.height*0.035)
                Text("Motoare pe benzină")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.95, height:geometry.size.height*0.01, alignment: .leading)
                ScrollView(.horizontal, showsIndicators: false, content: {
                    
                    HStack{
                        Spacer()
                            .frame(width:geometry.size.width*0.019)
                        HStack{
                            ZStack{
                                Rectangle()
                                    .fill(Color.customYellow)
                                    .frame(width: geometry.size.width*0.35, height: geometry.size.height*0.17)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                VStack{
                                    Image("Sce1")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.25, height: geometry.size.height*0.105)
                                        .cornerRadius(10)
                                    Text("1.0 SCe (65 CP)")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        
                        VStack{
                            Spacer()
                                .frame(height:geometry.size.height*0.015)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Viteză maximă:")
                                    .frame(width: geometry.size.width*0.32,alignment:.leading)
                            }
                            Text("158 km/h")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.27,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("0-100 km/h:")
                                    .frame(width: geometry.size.width*0.32,alignment:.leading)
                            }
                            Text("15.1 sec")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.27,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Consum mediu (aproximativ):")
                                    .frame(width: geometry.size.width*0.32,alignment:.leading)
                            }
                            Text("5.1 l/100 km")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.27,alignment:.leading)
                        }
                        
                        
                        
                        HStack{
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(Color.customPurple)
                                        .frame(width: geometry.size.width*0.35, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    
                                    VStack{
                                        Image("sce2")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.25, height: geometry.size.height*0.105)
                                            .cornerRadius(10)
                                        Text("1.0 SCe (70 CP)")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }

                            VStack{
                                Spacer()
                                    .frame(height:geometry.size.height*0.015)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Viteză maximă:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("151 km/h")
                                    .foregroundColor(Color.customPurple)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("14.5 sec")
                                    .foregroundColor(Color.customPurple)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("4.2 - 4.5 l/100 km")
                                    .foregroundColor(Color.customPurple)
                                    .frame(width: geometry.size.width*0.28,alignment:.leading)
                            }
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(Color.customYellow)
                                        .frame(width: geometry.size.width*0.35, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("sce3")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.25, height: geometry.size.height*0.105)
                                            .cornerRadius(10)
                                        Text("1.0 SCe (75 CP)")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            
                            VStack{
                                Spacer()
                                    .frame(height:geometry.size.height*0.015)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Viteză maximă:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("163 km/h")
                                    .foregroundColor(Color.customYellow)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("14.7 sec")
                                    .foregroundColor(Color.customYellow)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width: geometry.size.width*0.32, alignment:.leading)
                                }
                                Text("4.3 l/100 km")
                                    .foregroundColor(Color.customYellow)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                            }
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing))
                                        .frame(width: geometry.size.width*0.35, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("tce1")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.25, height: geometry.size.height*0.105)
                                            .cornerRadius(10)
                                        Text("0.9 TCe (90 CP)")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            
                            VStack{
                                Spacer()
                                    .frame(height:geometry.size.height*0.015)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Viteză maximă:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("165 km/h")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("10.8 sec")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("4.3 - 4.6 l/100 km")
                                    .foregroundStyle(
                                        LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                                    )
                                    .frame(width: geometry.size.width*0.19,alignment:.leading)
                            }
                            
                            HStack{
                                ZStack{
                                    Rectangle()
                                        .fill(Color.customPurple)
                                        .frame(width: geometry.size.width*0.35, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("tceGT")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.25, height: geometry.size.height*0.105)
                                            .cornerRadius(10)
                                        Text("0.9 GT TCe (110 CP)")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            
                            VStack{
                                Spacer()
                                    .frame(height:geometry.size.height*0.015)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Viteză maximă:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("183 km/h")
                                    .foregroundColor(Color.customPurple)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("0-100 km/h:")
                                        .frame(width: geometry.size.width*0.32,alignment:.leading)
                                }
                                Text("9.6 (10.8) sec")
                                    .foregroundColor(Color.customPurple)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                                Spacer()
                                    .frame(height:geometry.size.width*0.01)
                                HStack{
                                    Image(systemName: "circle.fill")
                                    Text("Consum mediu (aproximativ):")
                                        .frame(width: geometry.size.width*0.27, alignment:.leading)
                                }
                                Text("5.7 (5.9) l/100 km")
                                    .foregroundColor(Color.customPurple)
                                    .frame(width: geometry.size.width*0.27,alignment:.leading)
                            }
                            
                            
                           
                        }
                    }
                    
                })
                Text("Motoare electrice")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.95, height:geometry.size.height*0.01, alignment: .leading)
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack{
                        Spacer()
                            .frame(width:geometry.size.width*0.019)
                        HStack{
                            ZStack{
                                Rectangle()
                                    .fill(Color.customYellow)
                                    .frame(width: geometry.size.width*0.35, height: geometry.size.height*0.17)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                VStack{
                                    Image("evTwingo")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.25, height: geometry.size.height*0.105)
                                        .cornerRadius(10)
                                    Text("Z.E. 22kWh (82 CP)")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        
                        VStack{
                            Spacer()
                                .frame(height:geometry.size.height*0.015)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Viteză maximă:")
                                    .frame(width: geometry.size.width*0.32,alignment:.leading)
                            }
                            Text("135 km/h")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.27,alignment:.leading)
                            Spacer()
                                .frame(height:geometry.size.width*0.01)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("0-100 km/h:")
                                    .frame(width: geometry.size.width*0.32,alignment:.leading)
                            }
                            Text("12.6 sec")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.27,alignment:.leading)
                            HStack{
                                Image(systemName: "circle.fill")
                                Text("Autonomie (aproximativă):")
                                    .frame(width: geometry.size.width*0.32,alignment:.leading)
                            }
                            Text("190 km")
                                .foregroundColor(Color.customYellow)
                                .frame(width: geometry.size.width*0.27,alignment:.leading)
                        }

                    }
                    
                })
            }
        }
    }
}

#Preview {
    Mk3Specs_iPad()
}
