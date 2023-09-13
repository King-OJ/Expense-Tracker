//
//  EspenseDetail.swift
//  Expense Tracker
//
//  Created by Clem OJ on 12/09/2023.
//

import SwiftUI

struct ExpenseDetail: View {
    
    
    var amount: String
    var date: Date
    var name: String
    var type: String
    
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 350, height: 85)
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            
            HStack() {
                VStack(alignment: .leading, spacing: 4) {
                    Text(name)
                        .foregroundColor(.black)
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    Text(type)
                        .foregroundColor(.teal)
                        .font(.system(size: 16))
                        .bold()
                    
                    Text(date, style: .date)
                        .foregroundColor(.gray)
                        .font(.caption)
                       
                }.padding()
                
                Spacer()
                
                Text("N\(amount)")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.red)
                    .padding()
            }
            .padding(.horizontal, 16)
        }
    }
}

struct EspenseDetail_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseDetail(amount: "70", date: Date(), name: "Groceries", type: "Food")
    }
}
