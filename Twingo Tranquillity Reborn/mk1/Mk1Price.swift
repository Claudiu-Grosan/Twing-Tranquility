//
//  Mk1Price.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 4/2/24.
//

import SwiftUI

struct Mk1Price: View {
        @Environment(\.openURL) var openURL //dependency to open websites
        @Environment(\.dismiss) var dismiss
        var body: some View {
            VStack{
                Button ("Back", systemImage: "chevron.backward" ){
                    dismiss()
                }
                .frame(maxWidth: 350, alignment: .leading)
                .buttonStyle(.bordered)
                Text("Generația întâi de Twingo")
                    .font(.system(size:43))
                    .fontWeight(.black)
                    .foregroundColor(Color.customRed)
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
                        Circle().stroke(Color.customRed, lineWidth: 6)
                    }
                    .shadow(radius:5)
                Spacer()
                    .frame(height:40)
                Text("""
                V-am stârnit interesul? Verificați prețul în timp real pe platforma Olx
                """)
                .foregroundColor(Color.customRed)
                .fontDesign(.rounded)
                .frame(maxWidth: 350, alignment: .leading)
                Spacer()
                    .frame(height:40)
                Button("Verifică prețul", systemImage: "link") {
                    openURL(URL(string: "https://www.olx.ro/oferte/q-renault-twingo/?currency=EUR&search%5Border%5D=filter_float_price:desc&search%5Bfilter_float_price:from%5D=600&search%5Bfilter_float_price:to%5D=1250")!)
                }
                .buttonStyle(.bordered)
                .tint(.customRed)
                .buttonBorderShape(.capsule)
                .symbolEffect(.bounce, value:5)
                Divider()
                    .frame(height:40)
            }
        }
}

#Preview {
    Mk1Price()
}
