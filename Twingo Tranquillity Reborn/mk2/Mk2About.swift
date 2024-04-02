//  Mk2About.swift
//  Twingo Tranquillity Reborn
//  Created by Clau on 4/2/24.

import SwiftUI

extension Color{
    public static var customBlue:Color{
        return Color(UIColor(red:21/255, green: 95/255, blue:214/255, alpha: 1.0))
    }
}

struct Mk2About: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                dismiss()
            }
            .frame(maxWidth: 350, alignment: .leading)
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    Mk2About()
}
