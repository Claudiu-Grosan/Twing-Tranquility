//
//  Mk2Price_iPad.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/21/24.
//

import SwiftUI

struct Mk2Price_iPad: View {
    @Environment(\.openURL) var openURL // to open websites
    @Environment(\.dismiss) var dismiss
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Button ("Back", systemImage: "chevron.backward" ){
                    dismiss()
                }
                .frame(width: geometry.size.width*0.9, alignment: .leading)
                .buttonStyle(.bordered)
                Text("Generația a doua de Twingo")
                    .foregroundStyle(
                        LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                    )
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                
                Spacer()
                    .frame(height: geometry.size.height*0.05)
                
                Image("mk2drvi")
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .overlay{
                        Circle().strokeBorder(
                            AngularGradient(gradient: Gradient(colors: [.customPink,.customPink,.customBlue,.customBlue,.customBlue,.customPink,.customPink]), center: .center, startAngle: .zero, endAngle: .degrees(360)),
                            lineWidth: 6
                        )
                    }
                    .frame(width: geometry.size.width*0.76, height: geometry.size.height*0.53)
                    .shadow(radius:5)
                Spacer()
                    .frame(height:geometry.size.height*0.05)
                Text("""
            V-am stârnit interesul? Verificați prețul în timp real pe platforma Olx
            """)
                .foregroundStyle(
                    LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                )
                .fontDesign(.rounded)
                .frame(width: geometry.size.width*0.9, alignment: .center)
                Spacer()
                    .frame(height:geometry.size.height*0.05)
                ScrollView(.horizontal, showsIndicators: false, content:{
                    HStack{
                        Button("Verifică prețul", systemImage: "link") {
                            openURL(URL(string: "https://www.olx.ro/oferte/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:asc&search%5Bfilter_float_price:from%5D=1600&search%5Bfilter_float_year:from%5D=2007&search%5Bfilter_float_year:to%5D=2011")!)
                            
                        }
                        .buttonStyle(.bordered)
                        .tint(.customBlue)
                        .buttonBorderShape(.capsule)
                        .symbolEffect(.bounce, value:5)
                        .frame(width: geometry.size.width*0.45)
                        Spacer()
                            .frame(width:geometry.size.width*0.1)
                        Button("Verifică prețul", systemImage: "link") {
                            openURL(URL(string: "https://www.olx.ro/oferte/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:asc&search%5Bfilter_float_price:from%5D=1600&search%5Bfilter_float_year:from%5D=2011&search%5Bfilter_float_year:to%5D=2014")!)
                        }
                        .buttonStyle(.bordered)
                        .tint(.customPink)
                        .buttonBorderShape(.capsule)
                        .symbolEffect(.bounce, value:5)
                        .frame(width: geometry.size.width*0.45)
                    }
                } )
                
               
            }
        }
    }
}

#Preview {
    Mk2Price_iPad()
}
