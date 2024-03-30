//
//  Mk1Specs.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 3/30/24.
//

import SwiftUI

struct Mk1Specs: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                    dismiss()
            }
                .frame(maxWidth: 350, alignment: .leading)
                .buttonStyle(.bordered)
            Text("Specificații pentru prima generație de Twingo")
                .foregroundColor(Color.customRed)
                .font(.title)
                .fontWeight(.black)
                .fontDesign(.rounded)
                .frame(maxWidth: 350, alignment: .leading)
                .contextMenu {
                    /*@START_MENU_TOKEN@*/Text("Menu Item 1")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 2")/*@END_MENU_TOKEN@*/
                    /*@START_MENU_TOKEN@*/Text("Menu Item 3")/*@END_MENU_TOKEN@*/
                }preview:{
                    Text("prev")
                }
        }
    }
}

#Preview {
    Mk1Specs()
}
