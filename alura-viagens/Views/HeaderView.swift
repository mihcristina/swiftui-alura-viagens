//
//  eaderView
//  alura-viagens
//
//  Created by Michelli Cristina de Paulo Lima on 20/02/23.
//

import SwiftUI

struct HeaderView: View {

    @Environment(\.horizontalSizeClass) var horizontalSizeClass

    var body: some View {

        GeometryReader { view in
            VStack {

                VStack {
                    VStack {
                        Text("alura viagens")
                            .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 30))
                            .foregroundColor(Color.white)
                            .padding(.top, 50)
                        Text("ESPECIAL")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Book", size: self.horizontalSizeClass == .compact ? 20 : 30))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                        Text("BRASIL")
                            .foregroundColor(Color.white)
                            .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 23 : 33))
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 30)
                    }
                    .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 200 : 310, alignment: .top)
                    .background(Color.purple)

                    HStack {

                        Button(action: {}) {
                            Text("Hotéis")
                                .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                                .foregroundColor(.white)
                        }
                        .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 10))
                        .background(Color.blue)
                        .offset(x: self.horizontalSizeClass == .compact ? 50 : view.size.width/4)

                        Spacer()

                        Button(action: {}) {
                            Text("Pacotes")
                                .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 17 : 24))
                                .foregroundColor(.white)
                        }
                        .frame(width: self.horizontalSizeClass == .compact ? 100 : 150, height: self.horizontalSizeClass == .compact ? 50 : 75)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.orange, lineWidth: 10))
                        .background(Color.orange)
                        .offset(x: self.horizontalSizeClass == .compact ? -50 : -view.size.width/4)
                    }
                    .offset(y: self.horizontalSizeClass == .compact ? -30 : -45)
                }
            }
        }
    }

    struct SwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            HeaderView()
        }
    }
}
