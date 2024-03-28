//
//  Row.swift
//  Twingo Tranquillity Reborn
//
//  Created by Clau on 3/20/24.
//

import SwiftUI

struct Row: View {
    @State private var isPresented = false //variabila necesara pt butoanele folosite
    var body: some View {
        //VStack to group everything
            VStack{
                Text("Twingo-uri")
                    .font(.system(size:43))
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(maxWidth: 350, alignment: .leading)
                
                Divider()
                
                Text("Generația 1")
                    .font(.subheadline)
                    .frame(maxWidth: 350, alignment: .leading)
                
                //First Scroll View, used for the mk1
                ScrollView(.horizontal, showsIndicators: false, content:{
                    //HStack to group the rectangles and items
                    HStack{
                        //ZStack to be able to put items over other items
                        ZStack{
                            Button(action:{
                                isPresented.toggle() //button action/animation
                            }){
                                //Button design basically, here a ZStack to once again overlap shit
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200, height: 125)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                        .foregroundColor(Color.customRed)
                                    //Yeah, VStack in ZStack in Button, in ZStack, in HStack, in Scroll View 💀
                                    VStack{
                                        Image("mk1")
                                            .resizable()
                                            .frame(width: 100.0, height: 75.0)
                                        Text("Despre")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                        }
                        .fullScreenCover(isPresented: $isPresented, content: Mk1About.init) //Necessary to be able to open future pages of the project
                        
                        //Place holder rectangles, will be used
                        Rectangle()
                            .frame(width: 200, height: 125)
                            .cornerRadius(23)
                            .shadow(radius: 10)
                            .padding(5)
                        Rectangle()
                            .frame(width: 200, height: 125)
                            .cornerRadius(23)
                            .shadow(radius: 10)
                            .padding(5)
                    }
                        })
                
                //2nd Scroll View
                ScrollView(.horizontal, showsIndicators: false, content:{
                    //Same Shit, copy paste :3
                    HStack{
                        ZStack{
                            Button(action:{
                                isPresented.toggle()
                            }){
                                Rectangle()
                                    .frame(width: 200, height: 125)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                            }
                            .fullScreenCover(isPresented: $isPresented, content: TwingoMk3_pg1.init)
                        }
                        //palceholder rectangle
                        Rectangle()
                            .frame(width: 200, height: 125)
                            .cornerRadius(23)
                            .shadow(radius: 10)
                            .padding(5)
                    }
                })
            }
    }
}

#Preview {
    Row()
}
