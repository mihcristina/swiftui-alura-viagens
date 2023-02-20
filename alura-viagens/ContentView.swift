//
//  ContentView.swift
//  alura-viagens
//
//  Created by Michelli Cristina de Paulo Lima on 20/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("alura viagens")
                .font(.custom("Avenir Black", size: 20))
                .foregroundColor(Color.white)
            Text("ESPECIAL")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Book", size: 20))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            Text("BRASIL")
                .foregroundColor(Color.white)
                .font(.custom("Avenir Black", size: 23))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            List {
                Text("Rio de Janeiro")
                Text("Ceará")
                Text("Atibaia")
                Text("Rio de Janeiro")
            }
        }
        .background(Color.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
