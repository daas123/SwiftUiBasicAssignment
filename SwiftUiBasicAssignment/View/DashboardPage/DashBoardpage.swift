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
                    Image("saad")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100,height: 100)
                        .clipShape(Circle())
                    
                    Text("Welcome \(userPhoto)")
                        .font(.title3)
                        .bold()
                    
                    Image("bicycle")
                
                NavigationView {
                    List{
                        Section {
                            ForEach(demoData) { val in
                                ReUsableCell(userTask: val.taskName, isCompleted: val.taskGotComplited)
                            }
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .navigationBarLeading) {
                            Text("Today Task")
                                .frame(maxWidth: .infinity,alignment: .leading)
                                .padding(.horizontal,5)
                                .font(.title2)
                                .bold()
                        }
                        ToolbarItem(placement: .navigationBarTrailing) {
                            EditButton()
                                .tint(Color.black)
                                .bold()
                                .font(.title3)
                        }
                    }.background(ColorConstant.primaryBackground)
                        .toolbarBackground(ColorConstant.primaryBackground, for: .automatic)
                    
                }.frame(maxWidth: .infinity, maxHeight: 300)
                    .scrollContentBackground(Visibility.hidden)
                
                Text("More...")
                    .frame(maxWidth: .infinity,alignment: .trailing)
                    .padding(.horizontal,20)
                    .bold()
                    .font(.title3)
                
            }
        }.background(ColorConstant.primaryBackground)
    }
}

struct DashBoardpage_Previews: PreviewProvider {
    static var previews: some View {
        DashBoardpage()
    }
}
