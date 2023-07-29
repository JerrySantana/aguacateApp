//
//  ArticlesList.swift
//  Agua_cate
//
//  Created by Gerardo Santana.
//

import SwiftUI

struct ArticlesList: View {
    @EnvironmentObject var modelData: ModelData
    var articleA: [Articles] {
        modelData.articles
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(articleA) { article in
                    NavigationLink {
                        ArticlesDetail(article: article)
                    } label: {
                        ArticlesRow(article: article)
                    }
                }
            }
            .navigationTitle("Artículos interesantes.")
        }
    }
}

struct ArticlesList_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesList()
            .environmentObject(ModelData())
    }
}
