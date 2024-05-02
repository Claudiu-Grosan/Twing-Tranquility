//  Row.swift
//  Twingo Tranquillity Reborn
//  Created by Clau on 3/20/24.
//.frame(width: 200, height: 125)
import SwiftUI

struct Row: View {
    @State private var isPresented1 = false //variabile necesara pt butoanele folosite
    @State private var isPresented2 = false
    @State private var isPresented3 = false
    @State private var isPresented4 = false
    @State private var isPresented5 = false
    @State private var isPresented6 = false
    @State private var isPresented7 = false
    @State private var isPresented8 = false
    @State private var isPresented9 = false
    var body: some View {
        GeometryReader { geometry in
            //VStack to group everything
            VStack{
                Spacer()
                    .frame(height: geometry.size.height*0.1)
                Text("Twingo-uri")
                    .font(.system(size:43))
                    .fontWeight(.black)
                    .fontDesign(.rounded)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                    .foregroundStyle(
                        LinearGradient(colors: [.customGreen, .customBlue, .customPink,.customPurple, .customYellow], startPoint: .leading, endPoint: .trailing)
                    )
                
                Divider()
                
                Text("Generația 1")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                
                //First Scroll View, used for the mk1
                ScrollView(.horizontal, showsIndicators: false, content:{
                    //HStack to group the rectangles and items
                    HStack{
                        //ZStack to be able to put items over other items
                        Spacer()
                            .frame(width: geometry.size.width*0.03)
                        Button(action:{
                            isPresented1.toggle() //button action/animation
                        }){
                            //Button design basically, here a ZStack to once again overlap shit
                            ZStack{
                                Rectangle()
                                    .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                    .foregroundColor(Color.customGreen)
                                //Yeah, VStack in ZStack in Button, in ZStack, in HStack, in Scroll View 💀
                                VStack{
                                    Image("mk1")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.23, height:geometry.size.height*0.1)
                                    Text("Despre")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        .fullScreenCover(isPresented: $isPresented1, content: Mk1Selection.init)
                        //Necessary to be able to open future pages of the project
                        
                        
                        Button(action:{
                            isPresented2.toggle() //button action/animation
                        }){
                            //Button design basically, here a ZStack to once again overlap shit
                            ZStack{
                                Rectangle()
                                    .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                    .cornerRadius(23)
                                
                                    .shadow(radius: 10)
                                    .padding(5)
                                    .foregroundColor(Color.customGreen)
                                VStack{
                                    Image("mk1eng")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.27, height:geometry.size.height*0.1)
                                        .cornerRadius(20)
                                    Text("Specificații tehnice")
                                        .foregroundColor(Color.white)
                                }
                            }
                        }
                        .fullScreenCover(isPresented: $isPresented2, content: Mk1SelectionSpecs.init)
                        Button(action:{
                            isPresented3.toggle() //button action/animation
                        }){
                            ZStack{
                                Rectangle()
                                    .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                    .cornerRadius(23)
                                    .shadow(radius: 10)
                                    .padding(5)
                                    .foregroundColor(Color.customGreen)
                                VStack{
                                    Image("funnymk1")
                                        .resizable()
                                        .frame(width: geometry.size.width*0.29, height:geometry.size.height*0.1)
                                        .cornerRadius(20)
                                    Text("Verificare preț")
                                        .foregroundColor(Color.white)
                                    
                                }
                            }
                        }
                        .fullScreenCover(isPresented: $isPresented3, content: Mk1Price.init)
                        Spacer()
                            .frame(width: geometry.size.width*0.03)
                    }
                })
                
                
                Text("Generația 2")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                //2nd Scroll View
                ScrollView(.horizontal, showsIndicators: false, content:{
                    //Same Shit, copy paste :3
                    HStack{
                        Spacer()
                            .frame(width: geometry.size.width*0.03)
                        ZStack{
                            Button(action:{
                                isPresented4.toggle()
                            }){
                                ZStack{
                                    Rectangle()
                                        .fill(Gradient(colors:[.customBlue, .customPink]))
                                        .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("mk2")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.27, height:geometry.size.height*0.105)
                                        Text("Despre")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            .fullScreenCover(isPresented: $isPresented4, content: Mk2Selection.init)
                        }
                        ZStack{
                            Button(action:{
                                isPresented5.toggle()
                            }){
                                ZStack{
                                    Rectangle()
                                        .fill(Gradient(colors:[.customBlue, .customPink]))//gradient to show that it includes both pre and post facelift
                                        .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("mk2Engine")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.27, height:geometry.size.height*0.105)
                                            .cornerRadius(20)
                                        Text("Specificații tehnice")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            .fullScreenCover(isPresented: $isPresented5, content: Mk2SelectionSpecs.init)
                        }
                        ZStack{
                            Button(action:{
                                isPresented6.toggle()
                            }){
                                ZStack{
                                    Rectangle()
                                        .fill(Gradient(colors:[.customBlue, .customPink]))
                                        .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("mk2conf")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.27, height:geometry.size.height*0.105)
                                            .cornerRadius(20)
                                        Text("Verificare preț")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            .fullScreenCover(isPresented: $isPresented6, content: Mk2SelectionPrice.init)
                        }
                        Spacer()
                            .frame(width: geometry.size.width*0.03)
                    }
                })
                Text("Generația 3")
                    .font(.subheadline)
                    .frame(width: geometry.size.width*0.9, alignment: .leading)
                //2nd Scroll View
                ScrollView(.horizontal, showsIndicators: false, content:{
                    //Same Shit, copy paste :3
                    HStack{
                        Spacer()
                            .frame(width: geometry.size.width*0.03)
                        ZStack{
                            Button(action:{
                                isPresented7.toggle()
                            }){
                                ZStack{
                                    Rectangle()
                                        .fill(Gradient(colors:[.customPurple, .customYellow]))
                                        .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Spacer()
                                            .frame(height: geometry.size.height*0.02)
                                        Image("mk3")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.27, height:geometry.size.height*0.085)
                                        Text("Despre")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            .fullScreenCover(isPresented: $isPresented7, content: Mk2Selection.init)
                        }
                        ZStack{
                            Button(action:{
                                isPresented8.toggle()
                            }){
                                ZStack{
                                    Rectangle()
                                        .fill(Gradient(colors:[.customPurple, .customYellow]))//gradient to show that it includes both pre and post facelift
                                        .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("mk3engine")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.27, height:geometry.size.height*0.105)
                                            .cornerRadius(20)
                                        Text("Specificații tehnice")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            .fullScreenCover(isPresented: $isPresented8, content: Mk3SelectionSpecs.init)
                        }
                        ZStack{
                            Button(action:{
                                isPresented9.toggle()
                            }){
                                ZStack{
                                    Rectangle()
                                        .fill(Gradient(colors:[.customPurple, .customYellow]))
                                        .frame(width: geometry.size.width*0.5, height: geometry.size.height*0.17)
                                        .cornerRadius(23)
                                        .shadow(radius: 10)
                                        .padding(5)
                                    VStack{
                                        Image("swingo")
                                            .resizable()
                                            .frame(width: geometry.size.width*0.33, height:geometry.size.height*0.105)
                                            .cornerRadius(20)
                                        Text("Verificare preț")
                                            .foregroundColor(Color.white)
                                    }
                                }
                            }
                            .fullScreenCover(isPresented: $isPresented9, content: Mk2SelectionPrice.init)
                        }
                        Spacer()
                            .frame(width: geometry.size.width*0.03)
                    }
                })
            }
        }
    }
}

#Preview {
    Row()
}
