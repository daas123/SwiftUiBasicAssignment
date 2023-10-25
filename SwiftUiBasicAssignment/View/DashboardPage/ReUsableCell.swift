//
//  ReUsableCell.swift
//  SwiftUiBasicAssignment
//
//  Created by Neosoft on 23/10/23.
//

import SwiftUI

struct ReUsableCell: View {
    @State var userTask = "hello world"
    @State var isCompleted = false
    @State var Date = "12-10-2023"
    var body: some View {
        
        VStack{
            Text("Date : \(Date)")
                .frame(maxWidth: .infinity,alignment: .leading)
                .font(.title3)
                .bold()
            
            

            HStack{
                Image(systemName: isCompleted ? "checkmark.square" : "square")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .onTapGesture {
                        isCompleted.toggle()
                    }
                
                Text(userTask)
                    .strikethrough(isCompleted)
                    .foregroundColor(isCompleted ? .gray : .primary)
                    .frame(maxWidth: .infinity , alignment: .leading)
                    .font(.system(size: 20))
                
            }.frame(maxWidth: .infinity)
                .padding(.horizontal,5)
        }
    }
}

struct ReUsableCell_Previews: PreviewProvider {
    static var previews: some View {
        ReUsableCell()
    }
}
