//
//  DashBoardpage.swift
//  SwiftUiBasicAssignment
//
//  Created by Neosoft on 20/10/23.
//

import SwiftUI

struct DashBoardpage: View {
    @State private var userPhoto : String = "Saad"
    @State private var isCompleted = false
    @State private var isChecked = false
    var body: some View {
        ZStack{
            VStack {
                Image("circledesign")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .aspectRatio(contentMode: .fit)
                    .position(x: 100, y: 55)
                    .padding(.top, 20)
                Spacer()
            }
            .ignoresSafeArea()
            
            VStack{
                Image("Rectangle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                Spacer()
            }.ignoresSafeArea()
            
            VStack{
                VStack{
                    Image("saad")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                        .clipShape(Circle())
                    
                    Text("Welcome \(userPhoto)")
                        .font(.title3)
                    
                    Image("bicycle")
                    
                    Text("Todo Task .")
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .padding(.horizontal,20)
                        .font(.title2)
                        .bold()
                }
                
                VStack{
                    HStack{
                        Text("Daily Tasks.")
                            .foregroundColor(Color.gray)
                        Spacer()
                        Image(systemName: "plus")
                    }.padding(15)
                    
                    ScrollView{
                        VStack{
                            HStack{
                                Image(systemName: isCompleted ? "checkmark.square" : "square")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .onTapGesture {
                                        isCompleted.toggle()
                                    }

                                Text("Task Description")
                                    .strikethrough(isCompleted)
                                    .foregroundColor(isCompleted ? .gray : .primary)
                                    .frame(maxWidth: .infinity , alignment: .leading)
                            }.frame(maxWidth: .infinity)
                                .padding(.horizontal,15)
                            HStack{
                                Image(systemName: isCompleted ? "checkmark.square" : "square")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .onTapGesture {
                                        isCompleted.toggle()
                                    }

                                Text("Task Description")
                                    .strikethrough(isCompleted)
                                    .foregroundColor(isCompleted ? .gray : .primary)
                                    .frame(maxWidth: .infinity , alignment: .leading)
                            }.frame(maxWidth: .infinity)
                                .padding(.horizontal,15)
                            HStack{
                                Image(systemName: isCompleted ? "checkmark.square" : "square")
                                    .resizable()
                                    .frame(width: 24, height: 24)
                                    .onTapGesture {
                                        isCompleted.toggle()
                                    }

                                Text("Task Description")
                                    .strikethrough(isCompleted)
                                    .foregroundColor(isCompleted ? .gray : .primary)
                                    .frame(maxWidth: .infinity,alignment: .leading)
                            }.frame(maxWidth: .infinity)
                                .padding(.horizontal,15)
                        }
                    }.frame(maxHeight: 150)
                }.background(Color.white)
                 .cornerRadius(20)
                 .padding(20)
                
            }
        }.background(ColorConstant.primaryBackground)
    }
}

struct DashBoardpage_Previews: PreviewProvider {
    static var previews: some View {
        DashBoardpage()
    }
}
