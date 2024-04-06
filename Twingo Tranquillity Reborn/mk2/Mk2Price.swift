//
//  Mk2Price.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/7/24.
//

import SwiftUI

struct Mk2Price: View {
    @Environment(\.openURL) var openURL // to open websites
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                dismiss()
            }
            .frame(maxWidth: 350, alignment: .leading)
            .buttonStyle(.bordered)
            Text("Generația a doua de Twingo")
                .foregroundStyle(
                    LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
                )
                .font(.system(size:43))
                .fontWeight(.black)
                .fontDesign(.rounded)
                .frame(maxWidth: 350, maxHeight: 250, alignment: .leading)
            
            Spacer()
                .frame(height:40)
            
            Image("mk1driving")
                .resizable(capInsets: EdgeInsets(top:190, leading: 300, bottom: 100, trailing: 270),
                           resizingMode: .tile)
                .frame(width: 500,height: 350)
                .clipShape(Circle())
                .overlay{
                    Circle().strokeBorder(
                        AngularGradient(gradient: Gradient(colors: [.customPink,.customPink,.customBlue,.customBlue,.customBlue,.customPink,.customPink]), center: .center, startAngle: .zero, endAngle: .degrees(360)),
                        lineWidth: 6
                    )
                }
                .shadow(radius:5)
            Spacer()
                .frame(height:40)
            Text("""
            V-am stârnit interesul? Verificați prețul în timp real pe platforma Olx
            """)
            .foregroundStyle(
                LinearGradient(colors: [.customBlue, .customPink], startPoint: .leading, endPoint: .trailing)
            )
            .fontDesign(.rounded)
            .frame(maxWidth: 350, alignment: .leading)
            Spacer()
                .frame(height:40)
            ScrollView(.horizontal, showsIndicators: false, content:{
                HStack{
                    Button("Verifică prețul", systemImage: "link") {
                        openURL(URL(string: "https://www.olx.ro/oferte/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:desc&search%5Bfilter_float_price:from%5D=600&search%5Bfilter_float_price:to%5D=1250")!)
                        
                    }
                    .buttonStyle(.bordered)
                    .tint(.customGreen)
                    .buttonBorderShape(.capsule)
                    .symbolEffect(.bounce, value:5)
                    .frame(width: 390)
                    Button("Verifică prețul", systemImage: "link") {
                        openURL(URL(string: "https://www.olx.ro/oferte/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:desc&search%5Bfilter_float_price:from%5D=600&search%5Bfilter_float_price:to%5D=1250")!)
                    }
                    .buttonStyle(.bordered)
                    .tint(.customGreen)
                    .buttonBorderShape(.capsule)
                    .symbolEffect(.bounce, value:5)
                    .frame(width: 390)
                }
            } )
            
            Divider()
                .frame(height:40)
        }
    }
}

#Preview {
    Mk2Price()
}
