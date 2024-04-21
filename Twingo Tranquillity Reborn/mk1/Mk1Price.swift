//
//  Mk1Price.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/2/24.
//

import SwiftUI

struct Mk1Price: View {
    @Environment(\.openURL) var openURL // to open websites
    @Environment(\.dismiss) var dismiss
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Button ("Back", systemImage: "chevron.backward" ){
                    dismiss()
                }
                .frame(width: geometry.size.width*0.9, alignment: .leading)
                .buttonStyle(.bordered)
                
                Text("Generația întâi de Twingo")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color.customGreen)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                
                Spacer()
                    .frame(height: geometry.size.height*0.05)
                
                Image("mk1drv")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(Color.customGreen, lineWidth: 6)
                    }
                    .frame(width: geometry.size.width, height: geometry.size.height*0.53)
                    .shadow(radius:5)
                Spacer()
                    .frame(height:geometry.size.height*0.05)
                Text("""
                V-am stârnit interesul? Verificați prețul în timp real pe platforma Olx
                """)
                .foregroundColor(Color.customGreen)
                .fontDesign(.rounded)
                .frame(width: geometry.size.width*0.9, alignment: .center)
                Spacer()
                    .frame(height:geometry.size.height*0.05)
                Button("Verifică prețul", systemImage: "link") {
                    openURL(URL(string: "https://www.olx.ro/oferte/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:desc&search%5Bfilter_float_price:from%5D=600&search%5Bfilter_float_price:to%5D=1250")!)
                }
                .buttonStyle(.bordered)
                .tint(.customGreen)
                .buttonBorderShape(.capsule)
                .symbolEffect(.bounce, value:5)
                
            }
        }
    }
}

#Preview {
    Mk1Price()
}
