//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Michelli Cristina de Paulo Lima on 20/02/23.
//

import SwiftUI

struct CelulaViagemView: View {

    var viagem: Viagem

    var body: some View {
        VStack(alignment: .leading) {
            Text(viagem.titulo)
            Image(viagem.imagem)
                .resizable()
                .frame(height: 125)

            HStack {
                Text(viagem.quantidadeDeDias)

                Spacer()

                Text(viagem.valor)
            }
        }
    }
}

struct CelulaViagemView_Previews: PreviewProvider {
    static var previews: some View {
        CelulaViagemView(viagem: viagens[0])
    }
}
