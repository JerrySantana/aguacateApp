//
//  MakeAChangeView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

struct MakeAChangeView: View {
    var body: some View {
        ZStack {
            Image("Logo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.keyboard, edges: .top)
            ScrollView {
                VStack {
                    VideoView()
                        .frame(width: 360, height: 300)
                        .scrollContentBackground(.hidden)
                    Link(destination: URL(string: "https://www.youtube.com/@LifederEducacion")!,
                         label: {
                        Text("Fuente: Lifeder Educación en YouTube.")
                            .font(.system(size: 10, weight: .semibold))
                            .foregroundColor(.blue)
                            .cornerRadius(12)
                    })
                    Text("Dejanos tus datos y te enviaremos más información.")
                        .font(.system(size: 20, weight: .medium, design: .serif))
                        .foregroundColor(.orange)
                        .padding(.top)
                    FormView()
                        .frame(width: 400, height: 250)
                }
            }
        }
    }
}

struct MakeAChangeView_Previews: PreviewProvider {
    static var previews: some View {
        MakeAChangeView()
    }
}
