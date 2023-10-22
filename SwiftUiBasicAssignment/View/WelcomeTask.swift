//
//  WelcomeTask.swift
//  SwiftUiBasicAssignment
//
//  Created by Neosoft on 20/10/23.
//

import SwiftUI

struct WelcomeTask: View {
    @State private var task1 : String = String()
    @State private var task2 : String = String()
    @State private var task3 : String = String()
    var body: some View {
        ZStack{
            ScrollView{
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
                    VStack{
                        Text("welcome OnBoard !")
                            .bold()
                            .font(.title)
                        
                        Image("welcomeScreenImage")
                        Text("Add What your want to do later on..")
                            .foregroundColor(ColorConstant.primaryGreen)
                        
                    }
                    VStack(spacing: 30){
                        TextField("Add Your Task", text: $task1)
                            .padding(.horizontal , 20)
                            .frame(height: 44)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(8)
                        TextField("Add Your Task", text: $task2)
                            .padding(.horizontal , 20)
                            .padding(.vertical , 10)
                            .frame(height: 44)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(8)
                        TextField("Add Your Task", text: $task3)
                            .padding(.horizontal , 20)
                            .padding(.vertical , 10)
                            .frame(height: 44)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(8)
                        NavigationLink {
                            DashBoardpage()
                        } label: {
                            Text("Add To List")
                                .font(.title2)
                                .frame(maxWidth: 220)
                                .frame(height: 44)
                                .background(ColorConstant.primaryGreen)
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
                                .bold()
                                .padding(.bottom,50)
                        }
                        
                        
                    }.padding(.horizontal , 30)
                }
            }.ignoresSafeArea()
            
            
        }.background(ColorConstant.primaryBackground)
    }
}

struct WelcomeTask_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTask()
    }
}
