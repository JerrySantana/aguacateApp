//
//  ContentView.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Inicio")
                }
            InformationView()
                .tabItem {
                    Image(systemName: "books.vertical.fill")
                    Text("Datos del agua")
                }
            JournalView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Diario de agua")
                }
            ArticlesList()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("¿Algo nuevo?")
                }
            MakeAChangeView()
                .tabItem {
                    Image(systemName: "globe.americas.fill")
                    Text("¿Qué hacer?")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
