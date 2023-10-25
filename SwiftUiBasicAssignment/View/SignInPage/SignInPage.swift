//
//  SignInPage.swift
//  SwiftUiBasicAssignment
//
//  Created by Neosoft on 20/10/23.
//

import SwiftUI

struct SignInPage: View {
    @State private var email : String = String()
    @State private var password : String = String()
    
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
                        Text("Welcome Back")
                            .font(.title)
                            .bold()
                        Image("signInPagePhoto")
                    }
                    
                    VStack(spacing: 20){
                        
                        TextField("Enter Your Email Address", text: $email )
                            .padding(.horizontal , 20)
                            .padding(.vertical , 10)
                            .frame(height: 44)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        TextField("Enter Your Password", text: $password)
                            .padding(.horizontal , 20)
                            .padding(.vertical , 10)
                            .frame(height: 44)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(8)
                        
                        NavigationLink {
                            WelcomeTask()
                        } label: {
                            Text("Forgot Password")
                                .foregroundColor(ColorConstant.primaryGreen)
                        }
                        
                        NavigationLink {
                            WelcomeTask()
                        } label: {
                            Text("SignIn")
                                .foregroundColor(Color.white)
                                .bold()
                                .frame(height: 44)
                                .frame(maxWidth: 220)
                                .font(.title2)
                                .background(ColorConstant.primaryGreen)
                                .cornerRadius(10)
                        }
                        
                    }.padding(.horizontal , 40)
                    
                }
                
                VStack{
                    HStack{
                        Text("Already have an account ?")
                        NavigationLink("SignIn", destination: SignInPage())
                            .foregroundColor(ColorConstant.primaryGreen)
                            .bold()
                    }
                }.padding(.top,100)
                    .padding(.bottom,30)
            }.ignoresSafeArea()
            
        }.background(ColorConstant.primaryBackground)
    }
}

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
