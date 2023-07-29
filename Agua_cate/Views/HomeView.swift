//
//  HomeView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Image("Logo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.keyboard, edges: .top)
            GeometryReader { proxy in
                ScrollView {
                    VStack {
                        Text("Bienvenidx a Agua~cate.")
                            .font(
                                .system(
                                    .headline,
                                    design: .serif,
                                    weight: .heavy))
                        Text("Cuidemos lo que nos mantiene sanos.")
                            .font(
                                .system(
                                    .subheadline,
                                    design: .monospaced,
                                    weight: .medium))
                    }
                    .position(
                        CGPoint(
                            x: proxy.size.width * 0.52,
                            y: proxy.size.height * 0.7))
                    Text("Creado por Gerardo Santana (Agua~cate).")
                        .font(
                            .system(
                                .caption2,
                                design: .monospaced,
                                weight: .medium))
                        .foregroundStyle(.orange)
                        .position(
                            CGPoint(
                                x: proxy.size.width * 0.52,
                                y: proxy.size.height * 0.9))
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
