//
//  StarterPage.swift
//  SwiftUiBasicAssignment
//
//  Created by Neosoft on 19/10/23.
//

import SwiftUI

struct StarterPage: View {
    var body: some View {
        NavigationView {
            
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
                    }.ignoresSafeArea()
                    
                    VStack{
                        Image("personsofa")
                        
                        Text("Get things done with ToDo")
                            .bold()
                            .font(.title2)
                        
                        Text("Start Your Day With Goal")
                            .padding()
                        
                        
                        NavigationLink(destination: SignUpPage()) {
                            Text("Get Started")
                                .font(.title2)
                                .frame(maxWidth: 220)
                                .frame(height: 44)
                                .background(ColorConstant.primaryGreen)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .bold()
                        }
                        .padding(.vertical, 50)
                        
                    }
                    
                }.ignoresSafeArea()
                
            }.background(ColorConstant.primaryBackground)
            
        }
    }
}

struct StarterPage_Previews: PreviewProvider {
    static var previews: some View {
        StarterPage()
    }
}
