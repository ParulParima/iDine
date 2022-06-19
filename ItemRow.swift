//
//  ItemRow.swift
//  iDine
//
//  Created by WHGNR-1671 on 24/05/22.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    var body: some View {
        HStack {
            Image(item.thumbnailImage).clipShape(Circle()).overlay(Circle().stroke(.gray, lineWidth: 2))
            VStack(alignment: .leading) {
                Text(item.name).font(.headline)
                Text("$\(item.price)")
            }
            Spacer()
            ForEach(item.restrictions,id: \.self) { restrictions in
                Text(restrictions)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restrictions,default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
