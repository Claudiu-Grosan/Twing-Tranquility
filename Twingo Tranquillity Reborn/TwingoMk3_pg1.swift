
//  Created by Clau on 3/9/24.

import SwiftUI

//custom Purple color, will be used everywhere to relate to the mk3; the others have other colors
extension Color{
   public static var customPurple:Color{
      return Color(UIColor(red:60/255, green: 0/255, blue:110/255, alpha: 1.0))
   }
}

struct TwingoMk3_pg1: View {
    @Environment(\.openURL) var openURL //dependency to open websites
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            Button ("Back", systemImage: "chevron.backward" ){
                dismiss()
            }
            .frame(maxWidth: 350, alignment: .leading)
            .buttonStyle(.bordered)
            Text("Twingo mk. 3")
                .font(.system(size:43))
                .fontWeight(.black)
                .foregroundColor(Color.customPurple)
                .fontDesign(.rounded)
                .frame(maxWidth: 350, alignment: .leading)
            
            Divider()
                .frame(height:50)
            
            Image("Twingo-side-driving")
                .resizable(capInsets: EdgeInsets(top:20, leading: 20, bottom: 20, trailing: 0),
                           resizingMode: .tile)
                .frame(width: 500,height: 350)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(Color.customPurple, lineWidth: 6)
                }
                .shadow(radius:5)
            Divider()
                .frame(height:40)
            Text("""
            V-am stârnit interesul? Verificați prețul în timp real pe platforma Olx
            """)
            .foregroundColor(Color.customPurple)
            .fontDesign(.rounded)
            .frame(maxWidth: 350, alignment: .leading)
            Button("Verifică prețul", systemImage: "link") {
                openURL(URL(string: "https://www.olx.ro/oferte/q-renault-twingo-3/?currency=EUR&search%5Border%5D=filter_float_price:asc&search%5Bfilter_float_price:from%5D=2500&search%5Bfilter_float_year:from%5D=2014")!)
            }
            .buttonStyle(.bordered)
            .tint(.customPurple)
            .buttonBorderShape(.capsule)
            .symbolEffect(.bounce, value:5)
            Divider()
                .frame(height:40)
        }
          
    }
}

#Preview {
    TwingoMk3_pg1()
}

