//  Row.swift
//  Twingo Tranquillity Reborn
//  Created by Clau on 3/20/24.

import SwiftUI

struct Row: View {
    @State private var isPresented1 = false //variabile necesara pt butoanele folosite
    @State private var isPresented2 = false
    @State private var isPresented3 = false
    @State private var isPresented4 = false
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

                            Button(action:{
                                isPresented1.toggle() //button action/animation
                            }){
                                //Button design basically, here a ZStack to once again overlap shit
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200, height: 125)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                        .foregroundColor(Color.customGreen)
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
                        .fullScreenCover(isPresented: $isPresented1, content: Mk1About.init)
                        //Necessary to be able to open future pages of the project
                        
                        
                            Button(action:{
                                isPresented2.toggle() //button action/animation
                            }){
                                //Button design basically, here a ZStack to once again overlap shit
                                ZStack{
                                    Rectangle()
                                        .frame(width: 200, height: 125)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                        .foregroundColor(Color.customGreen)
                                    VStack{
                                        Image("mk1eng")
                                            .resizable()
                                            .frame(width: 106.0, height: 66.0)
                                            .cornerRadius(20)
                                        Text("Specificații tehnice")
                                            .foregroundColor(Color.white)
                                    }
                                }
                        }
                        .fullScreenCover(isPresented: $isPresented2, content: Mk1Specs.init)
                        Button(action:{
                            isPresented3.toggle() //button action/animation
                        }){
                            ZStack{
                                Rectangle()
                                    .frame(width: 200, height: 125)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                    .foregroundColor(Color.customGreen)
                                VStack{
                                    Image("funnymk1")
                                        .resizable()
                                        .frame(width: 106.0, height: 66.0)
                                        .cornerRadius(20)
                                    Text("Verificare preț")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        .fullScreenCover(isPresented: $isPresented3, content: Mk1Price.init)
                    }
                        })
                
                
                Text("Generația 2")
                    .font(.subheadline)
                    .frame(maxWidth: 350, alignment: .leading)
                //2nd Scroll View
                ScrollView(.horizontal, showsIndicators: false, content:{
                    //Same Shit, copy paste :3
                    HStack{
                        ZStack{
                            Button(action:{
                                isPresented4.toggle()
                            }){
                                ZStack{
                                    Rectangle()
                                        .fill(Gradient(colors:[.customBlue, .customPink]))
                                        .frame(width: 200, height: 125)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("mk2")
                                            .resizable()
                                            .frame(width: 100.0, height: 75.0)
                                        Text("Despre")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            .fullScreenCover(isPresented: $isPresented4, content: Mk2About.init)
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
