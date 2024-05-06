//
//  Mk3Price.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 5/4/24.
//

import SwiftUI

struct Mk3Price: View {
    @Environment(\.openURL) var openURL
    @Environment(\.dismiss) var dismiss
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                    .frame(height: geometry.size.height*0.04)
                Button ("înapoi", systemImage: "chevron.backward" ){
                    dismiss()
                }
                .frame(width: geometry.size.width*0.906, alignment: .leading)
                .buttonStyle(.bordered)
                .foregroundStyle(LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing))
                Text("Generația a treia de Twingo")
                    .foregroundStyle(
                        LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                    )
                    .font(.title)
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.906, alignment: .leading)
                
                Spacer()
                    .frame(height: geometry.size.height*0.075)
                
                Image("Twingo3Side")
                    .resizable(capInsets: EdgeInsets(top:geometry.size.height*0.08, leading: geometry.size.height*0.2, bottom: geometry.size.height*0.03, trailing: 0))
                    .scaledToFill()
                    .clipShape(Circle())
                    .overlay{
                        Circle().strokeBorder(
                            AngularGradient(gradient: Gradient(colors: [.customYellow,.customYellow,.customPurple,.customPurple,.customPurple,.customYellow,.customYellow]), center: .center, startAngle: .zero, endAngle: .degrees(360)),
                            lineWidth: 6
                        )
                    }
                    .frame(width: geometry.size.width*0.76, height: geometry.size.height*0.45)
                    .shadow(radius:5)
                Spacer()
                    .frame(height:geometry.size.height*0.11)
                Text("""
            V-am stârnit interesul? Verificați prețul în timp real pe platforma Olx
            """)
                .foregroundStyle(
                    LinearGradient(colors: [.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                )
                .fontDesign(.rounded)
                .frame(width: geometry.size.width*0.906, alignment: .center)
                Spacer()
                    .frame(height:geometry.size.height*0.05)
                ScrollView(.horizontal, showsIndicators: false, content:{
                    HStack{
                        Button("Verifică prețul", systemImage: "link") {
                            openURL(URL(string: "https://www.olx.ro/auto-masini-moto-ambarcatiuni/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:asc&search%5Bfilter_float_year:from%5D=2014&search%5Bfilter_float_year:to%5D=2019")!)
                            
                        }
                        .buttonStyle(.bordered)
                        .tint(.customPurple)
                        .buttonBorderShape(.capsule)
                        .symbolEffect(.bounce, value:5)
                        .frame(width: geometry.size.width*0.45)
                        Spacer()
                            .frame(width:geometry.size.width*0.1)
                        Button("Verifică prețul", systemImage: "link") {
                            openURL(URL(string: "https://www.olx.ro/auto-masini-moto-ambarcatiuni/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:asc&search%5Bfilter_float_year:from%5D=2019")!)
                        }
                        .buttonStyle(.bordered)
                        .tint(.customYellow)
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
    Mk3Price()
}
