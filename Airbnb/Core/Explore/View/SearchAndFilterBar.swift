//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Luong Vu on 1/3/24.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2){
                Text("Where to go")
                    .font(.caption2)
                    .fontWeight(.semibold)
                Text("Anywhere - Any Week - Add guest")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical,10)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 0.2)
                .foregroundStyle(Color(.systemGray))
                .shadow(color: .black,radius: 2))
        .padding()
    }
}

struct SearchAndFilterBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchAndFilterBar()
    }
}
