//
//  InformationView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("¿Qué es el agua?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("El agua es una sustancia que está compuesta de dos elementos: Hidrógeno y Oxígeno.\nCubre tres cuartas partes del planeta y es elemental para la vida.")
                    .font(.system(.headline, design: .rounded, weight: .regular))
                Text("Aunque existe mucha agua en nuestro planeta EL 97% DE ESTA ES SALADA.")
                    .font(.system(.title, design: .rounded, weight: .semibold))
                RectangleImage(image: Image("wastedWater"))
                    .frame(width: 300, height: 200)
                Text("¿Qué provoca la contaminación del agua?")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("• El vertido de aguas residuales y desechos industriales sin tratamiento.")
                Text("• El aumento de la temperatura que ocsiona la disminución de oxígeno en su composición.")
                Text("• La deforestación y erosión del suelo.")
                Text("• El uso de pesticidas y fertilizantes.")
                VStack {
                    RectangleImage(image: Image("quienConsume"))
                        .frame(width: 300, height: 300)
                    Link(destination: URL(string: "https://imco.org.mx/situacion-del-agua-en-mexico/")!,
                         label: {
                        Text("Fuente: IMCO, Situación del agua en México.")
                            .font(.system(size: 10, weight: .semibold))
                            .foregroundColor(.blue)
                            .cornerRadius(12)
                    })
                }
            }
            .padding(30)
        }
    }
}
struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
