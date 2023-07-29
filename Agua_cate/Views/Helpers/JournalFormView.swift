//
//  JournalFormView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//
import SwiftUI

struct JournalFormView: View {
    @State private var bathTime = ""
    @State private var dishesTime = ""
    @State private var othersTime = ""
    @State private var cleaningTime = ""
    @State private var bathroom = ""
    @State private var clothes = ""
    @State private var total = 0.0
    var body: some View {
        VStack {
            Form {
                Text("Aquí puedes mantener un registro de tu consumo de agua.\nDime, ¿Cuánto tiempo tardaste en...")
                Section {
                    TextField("Bañarte (en minutos)...", text: $bathTime)
                        .keyboardType(.numberPad)
                    TextField("Lavar trastes (en minutos)...", text: $dishesTime)
                        .keyboardType(.numberPad)
                    TextField("Lavarte dientes, manos, afeitarte (en minutos)...", text: $othersTime)
                        .keyboardType(.numberPad)
                    TextField("Lavar carro, limpiar tu casa (en minutos)...", text: $cleaningTime)
                        .keyboardType(.numberPad)
                }
                .scrollDismissesKeyboard(.immediately)
                Text("Ahora dime, aproximadamente ¿Cuantas veces...")
                Section {
                    TextField("Entraste al baño...", text: $bathroom)
                        .keyboardType(.numberPad)
                    TextField("Lavaste ropa...", text: $clothes)
                        .keyboardType(.numberPad)
                }
                .scrollDismissesKeyboard(.immediately)
            }
            .frame(width: 400, height: 560, alignment: .center)
            .scrollContentBackground(.hidden)
            Button(
                "Calcular uso de agua.",
                action: {
                    calculateWaterUse()
                    bathTime = ""
                    dishesTime = ""
                    othersTime = ""
                    cleaningTime = ""
                    bathroom = ""
                    clothes = ""
                })
            Text(String(format: "Ocupaste un total de: %.2f litros de agua.", total))
        }
    }
    private func calculateWaterUse(){
        guard let bathTime = Double(bathTime),
              let dishesTime = Double(dishesTime),
              let othersTime = Double(othersTime),
              let cleaningTime = Double(cleaningTime),
              let bathroom = Double(bathroom),
              let clothes = Double(clothes) else {
            return
        }
        
        let register = Journal(
            bathTime: (12 * bathTime),
            dishesTime: (8 * dishesTime),
            othersTime: (6 * othersTime),
            cleaningTime: (10 * cleaningTime),
            bathroom: (10 * bathroom),
            clothes: (130 * clothes))
        
        total = register.bathroom + register.clothes
        total += register.bathTime + register.dishesTime + register.othersTime + register.cleaningTime
        saveJournalData(register)
        print(register.date)
    }
}
struct DiaryFormView_Previews: PreviewProvider {
    static var previews: some View {
        JournalFormView()
    }
}


